import 'package:zipper/locator.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/services/zip_code/zip_code_service.dart';
import 'package:zipper/utils/base_view_model.dart';

class ZipCodeSearchViewModel extends BaseViewModel {
  final _zipCodeService = locator<ZipCodeService>();

  String? _countryCode;
  String? _zipCode;

  List<CountryView> _countries = [];

  List<CountryView> get countries => _countries;
  bool get isSearchButtonEnable => _countryCode != null && _zipCode != null;

  Future<void> initializeWidget() async {
    final countries = await _zipCodeService.getCountries();
    logger.d(countries);
    _countries = countries.map((country) => CountryView.fromCountry(country)).toList();
    notifyListeners();
  }

  List<CountryView> searchCountries(String value) {
    return _countries.where((element) => element.name.toLowerCase().startsWith(value.toLowerCase())).toList();
  }

  Future<void> searchZipCodeTapped(Function(ZipCodeInformation zip) onZipCodeChanged) async {
    if (isSearchButtonEnable) {
      final zipCodeInformation = await _zipCodeService.getZipCodeDetails(
        countryCode: _countryCode!,
        zipCode: _zipCode!,
      );
      logger.d(zipCodeInformation);
      onZipCodeChanged(zipCodeInformation);
    }
  }

  void onCountryViewSelected(CountryView countryView) {
    _countryCode = countryView.code;
    notifyListeners();
  }

  void onZipCodeChange(String value) {
    _zipCode = value;
    notifyListeners();
  }
}
