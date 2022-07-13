import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:zipper/services/api_manager/exception.dart';

import 'response.dart';

enum APIMethod { get, post, put, patch, delete }

class APIManager {
  final http.Client client = http.Client();

  /// Makes the API request here
  ///
  /// [endPoint] - Endpoint of the API
  /// [method] - Type of [APIMethod]. Defaults to [APIMethod.get] See [APIMethod] enum for all the available methods
  /// [data] - data to be passed in the request in [Map] format
  /// [isAuthenticated] - if authenticated, Bearer token authorization will be added, otherwise not
  Future<Response> request(
    String endPoint, {
    APIMethod method = APIMethod.get,
    Map? data,
    bool isAuthenticated = true,
  }) async {
    final url = Uri.parse(endPoint);
    final headers = await _prepareHeaders(isAuthenticated);
    late http.Response response;

    try {
      switch (method) {
        case APIMethod.get:
          response = await client.get(url, headers: headers);
          break;
        case APIMethod.post:
          response = await client.post(url, headers: headers, body: json.encode(data));
          break;
        case APIMethod.put:
          response = await client.put(url, headers: headers, body: json.encode(data));
          break;
        case APIMethod.patch:
          response = await client.patch(url, headers: headers, body: json.encode(data));
          break;
        case APIMethod.delete:
          response = await client.delete(url, headers: headers);
          break;
      }
    } on SocketException catch (_) {
      return await request(endPoint, method: method, data: data, isAuthenticated: isAuthenticated);
    } on HttpException catch (_) {
      return await request(endPoint, method: method, data: data, isAuthenticated: isAuthenticated);
    } on FormatException catch (_) {
      return await request(endPoint, method: method, data: data, isAuthenticated: isAuthenticated);
    } catch (e) {
      rethrow;
    }

    return _handleResponse(response);
  }

  _handleResponse(http.Response response) {
    /// parse the response
    var responseBody = json.decode(response.body);

    /// status code of the response
    int statusCode = response.statusCode;

    bool isSuccessful = statusCode >= 200 && statusCode < 300;

    String error = '';
    if (!isSuccessful) {
      switch (statusCode) {
        case HttpStatus.movedPermanently:
        case HttpStatus.movedTemporarily:
          error = "The endpoint to this API has been changed, please consider to update it.";
          break;

        case HttpStatus.badRequest:
          error = "Please check your request and make sure you are posting a valid data body.";
          break;

        case HttpStatus.unauthorized:
          error = "This API needs to be authenticated with a Bearer token.";
          break;

        case HttpStatus.forbidden:
          error = "You are not allowed to call this API.";
          break;

        case HttpStatus.unprocessableEntity:
          error = "Provided credentials are not valid.";
          break;

        case HttpStatus.tooManyRequests:
          error = "You are requesting the APIs too often, please don't call the API(s) unnecessarily";
          break;

        case HttpStatus.internalServerError:
        case HttpStatus.badGateway:
        case HttpStatus.serviceUnavailable:
          error = "Server is not responding, please try again later!";
          break;

        default:
          error = "Something went wrong, please try again later!";
      }

      throw APIException(
        error,
        data: responseBody,
        statusCode: statusCode,
      );
    }

    return Response(
        data: responseBody, rawData: response, statusCode: statusCode, isSuccessful: isSuccessful, error: error);
  }

  Future<Map<String, String>> _prepareHeaders(bool isAuthenticated) async {
    final headers = {
      'Content-Type': 'application/json',
      'Connection': 'Keep-Alive',
      'Keep-Alive': 'timeout=60, max=1000',
    };
    return headers;
  }
}
