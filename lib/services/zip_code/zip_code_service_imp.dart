import 'package:dio/dio.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/services/zip_code/zip_code_service.dart';

class ZipCodeServiceImp implements ZipCodeService {
  @override
  Future<ZipCodeInformation> getZipCodeDetails({
    required String countryCode,
    required String zipCode,
  }) async {
    var dio = Dio();
    final response = await dio.get('https://google.com');
    return ZipCodeInformation.fromJson(response.data);
  }

  @override
  Future<List<Country>> getCountries() async {
    var dio = Dio();
    final response = await dio.get('https://countriesnow.space/api/v0.1/countries/flag/images');
    final elements = response.data['data'] as List;
    return elements.map((element) => Country.fromJson(element)).toList();
  }
}
