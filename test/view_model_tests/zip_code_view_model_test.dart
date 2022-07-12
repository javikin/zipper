import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/modules/zip_code_view_model.dart';

import '../helpers/test_helpers.dart';

ZipCodeViewModel _getViewModel() => ZipCodeViewModel();

class Functions {
  onZipCodeChanged(ZipCodeInformation data) => Future.value();
}

class MockFunctions extends Mock implements Functions {}

void main() {
  group('ZipCodeSearchViewModelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterService());

    group('run -', () {
      test('When called initializePage should initialize zipCode value', () async {
        final service = getAndRegisterStorageService();
        when(service.getZipCodeInformation()).thenAnswer((realInvocation) => Future(() => zipCodeInformation));
        final model = _getViewModel();
        await model.initializePage();
        verify(service.getZipCodeInformation());
        assert(model.zipCode != null);
      });
      test('When called onZipCodeChanged should store and update zipCode value', () async {
        final service = getAndRegisterStorageService();
        final model = _getViewModel();
        await model.onZipCodeChanged(zipCodeInformation);
        verify(service.cacheZipCodeInformation(zipCodeInformation));
        assert(model.zipCode != null);
      });
      test('When called onHomeViewTapped searchViewType value should be none', () async {
        final model = _getViewModel();
        await model.onHomeViewTapped();
        assert(model.searchViewType == SearchViewType.none);
      });
      test('When called onZipCodeViewTapped searchViewType value should be zipCode', () async {
        final model = _getViewModel();
        await model.onZipCodeViewTapped();
        assert(model.searchViewType == SearchViewType.zipCode);
      });
      test('When called onListViewTapped searchViewType value should be list', () async {
        final model = _getViewModel();
        await model.onListViewTapped();
        assert(model.searchViewType == SearchViewType.list);
      });
    });
  });
}
