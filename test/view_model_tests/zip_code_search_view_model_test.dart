import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/modules/zip_code_search_view_model.dart';

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
        await model.initializeWidget();
        verify(service.getCountries());
        assert(model.countries.isNotEmpty);
      });

      test('When called searchCountries should filter with the value name the countries list', () async {
        final service = getAndRegisterZipCodeService();
        when(service.getCountries()).thenAnswer((realInvocation) => Future(() => countries));
        final model = _getViewModel();
        await model.initializeWidget();
        final initialLength = model.countries.length;
        await model.searchCountries('Al');
        assert(model.countries.length < initialLength);
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
        await model.searchZipCodeTapped(functions.onZipCodeChanged, countryCode, zipCode);
        verify(service.getZipCodeDetails(countryCode: countryCode, zipCode: zipCode));
        verify(functions.onZipCodeChanged(zipCodeInformation));
      });
    });
  });
}
