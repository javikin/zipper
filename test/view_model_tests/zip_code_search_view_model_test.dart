import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/widgets/zip_code/zip_code_search_view_model.dart';

import '../helpers/test_helpers.dart';

ZipCodeSearchViewModel _getViewModel() => ZipCodeSearchViewModel();

class Functions {
  onZipCodeChanged(ZipCodeInformation data) => Future.value();
}

class MockFunctions extends Mock implements Functions {}

void main() {
  group('ZipCodeSearchViewModelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterService());

    group('run -', () {
      test('When called initializeWidget should initialize countries list', () async {
        final service = getAndRegisterZipCodeService();
        when(service.getCountries()).thenAnswer((realInvocation) => Future(() => countries));
        final model = _getViewModel();
        await model.initializeSearchWidget();
        verify(service.getCountries());
        assert(model.countries.isNotEmpty);
      });

      test('When called initializeWidget should initialize countries list', () async {
        final service = getAndRegisterZipCodeService();
        when(service.getZipCodeByCountry('mx')).thenAnswer((realInvocation) => Future(() => zipCodes));
        final model = _getViewModel();
        await model.initializeListWidget();
        verify(service.getZipCodeByCountry('mx'));
        assert(model.zipCodes.isNotEmpty);
      });

      test('When called searchCountries should filter with the value name the countries list', () async {
        final service = getAndRegisterZipCodeService();
        when(service.getCountries()).thenAnswer((realInvocation) => Future(() => countries));
        final model = _getViewModel();
        await model.initializeSearchWidget();
        final countriesSearch = model.searchCountries('Al');
        assert(model.countries.length > countriesSearch.length);
      });

      test('When called searchZipCodeTapped should return a zipCodeInformation instance if found it', () async {
        const countryCode = 'mx';
        const zipCode = '97302';
        final functions = MockFunctions();
        final service = getAndRegisterZipCodeService();
        when(service.getZipCodeDetails(countryCode: countryCode, zipCode: zipCode)).thenAnswer(
          (realInvocation) => Future(() => zipCodeInformation),
        );
        final model = _getViewModel();
        model.onCountryViewSelected(CountryView(name: '', flag: '', code: 'mx'));
        model.onZipCodeChange(zipCode);
        await model.searchZipCodeTapped(functions.onZipCodeChanged);
        verify(service.getZipCodeDetails(countryCode: countryCode, zipCode: zipCode));
        verify(functions.onZipCodeChanged(zipCodeInformation));
      });
    });
  });
}
