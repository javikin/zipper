import 'package:zipper/locator.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/services/api_manager/api_manager.dart';
import 'package:zipper/services/zip_code/zip_code_service.dart';
import 'package:zipper/utils/helper.dart';

class ZipCodeServiceImp implements ZipCodeService {
  final APIManager apiManager = locator<APIManager>();

  @override
  Future<ZipCodeInformation> getZipCodeDetails({
    required String countryCode,
    required String zipCode,
  }) async {
    final response = await apiManager.request('https://api.zippopotam.us/$countryCode/$zipCode');
    return ZipCodeInformation.fromJson(response.data);
  }

  @override
  Future<List<Country>> getCountries() async {
    final response = await apiManager.request('https://countriesnow.space/api/v0.1/countries/flag/unicode');
    final elements = response.data['data'] as List;
    return elements.map((element) => Country.fromJson(element)).toList();
  }

  @override
  Future<List<String>> getZipCodeByCountry(String countryCode) async {
    final response = await loadJsonResourcePath('assets/json/$countryCode.json');
    return (response as List).map((e) => e as String).toList();
  }
}
