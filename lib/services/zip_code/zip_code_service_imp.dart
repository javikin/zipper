import 'package:dio/dio.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/services/zip_code/zip_code_service.dart';
import 'package:zipper/utils/helper.dart';

class ZipCodeServiceImp implements ZipCodeService {
  @override
  Future<ZipCodeInformation> getZipCodeDetails({
    required String countryCode,
    required String zipCode,
  }) async {
    var dio = Dio();
    final response = await dio.get('https://api.zippopotam.us/$countryCode/$zipCode');
    return ZipCodeInformation.fromJson(response.data);
  }

  @override
  Future<List<Country>> getCountries() async {
    var dio = Dio();
    final response = await dio.get('https://countriesnow.space/api/v0.1/countries/flag/unicode');
    final elements = response.data['data'] as List;
    return elements.map((element) => Country.fromJson(element)).toList();
  }

  @override
  Future<List<String>> getZipCodeByCountry(String countryCode) async {
    final response = await loadJsonResourcePath('assets/json/$countryCode.json');
    return (response as List).map((e) => e as String).toList();
  }
}
