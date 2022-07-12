import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:zipper/locator.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/services/zip_code_service.dart';

class ZipCodeSearchViewModel extends ChangeNotifier {
  final _logger = Logger();
  final _zipCodeService = locator<ZipCodeService>();

  List<CountryView> _countries = [];

  List<CountryView> get countries => _countries;

  initializeWidget() async {
    final countries = await _zipCodeService.getCountries();
    _logger.d(countries);
    _countries = countries.map((country) => CountryView.fromCountry(country)).toList();
    notifyListeners();
  }

  searchCountries(String value) {
    var countriesFilter = _countries.where((element) => element.name.startsWith(value));
    _countries.clear();
    _countries = countriesFilter.toList();
    notifyListeners();
  }

  searchZipCodeTapped(Function(ZipCodeInformation zip) onZipCodeSearched, String countryCode, String zipCode) async {
    final zipCodeInformation = await _zipCodeService.getZipCodeDetails(countryCode: countryCode, zipCode: zipCode);
    onZipCodeSearched(zipCodeInformation);
  }
}