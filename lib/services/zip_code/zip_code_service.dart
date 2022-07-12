import 'package:zipper/models/data_models.dart';

abstract class ZipCodeService {
  Future<ZipCodeInformation> getZipCodeDetails({
    required String countryCode,
    required String zipCode,
  });

  Future<List<Country>> getCountries();

  Future<List<String>> getZipCodeByCountry(String country);
}
