// Mocks generated by Mockito 5.2.0 from annotations
// in zipper/test/helpers/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:zipper/models/data_models.dart' as _i2;
import 'package:zipper/services/local_storage/storage_service.dart' as _i5;
import 'package:zipper/services/zip_code/zip_code_service.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeZipCodeInformation_0 extends _i1.Fake
    implements _i2.ZipCodeInformation {}

/// A class which mocks [ZipCodeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockZipCodeService extends _i1.Mock implements _i3.ZipCodeService {
  @override
  _i4.Future<_i2.ZipCodeInformation> getZipCodeDetails(
          {String? countryCode, String? zipCode}) =>
      (super.noSuchMethod(
              Invocation.method(#getZipCodeDetails, [],
                  {#countryCode: countryCode, #zipCode: zipCode}),
              returnValue: Future<_i2.ZipCodeInformation>.value(
                  _FakeZipCodeInformation_0()))
          as _i4.Future<_i2.ZipCodeInformation>);
  @override
  _i4.Future<List<_i2.Country>> getCountries() =>
      (super.noSuchMethod(Invocation.method(#getCountries, []),
              returnValue: Future<List<_i2.Country>>.value(<_i2.Country>[]))
          as _i4.Future<List<_i2.Country>>);
}

/// A class which mocks [StorageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageService extends _i1.Mock implements _i5.StorageService {
  @override
  _i4.Future<void> cacheZipCodeInformation(
          _i2.ZipCodeInformation? zipCodeInformation) =>
      (super.noSuchMethod(
          Invocation.method(#cacheZipCodeInformation, [zipCodeInformation]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<_i2.ZipCodeInformation?> getZipCodeInformation() =>
      (super.noSuchMethod(Invocation.method(#getZipCodeInformation, []),
              returnValue: Future<_i2.ZipCodeInformation?>.value())
          as _i4.Future<_i2.ZipCodeInformation?>);
}
