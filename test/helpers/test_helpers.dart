import 'package:mockito/annotations.dart';
import 'package:zipper/locator.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/services/zip_code_service.dart';

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<ZipCodeService>(returnNullOnMissingStub: true),
])
MockZipCodeService getAndRegisterZipCodeService() {
  _removeRegistrationIfExists<ZipCodeService>();
  final service = MockZipCodeService();
  locator.registerSingleton<ZipCodeService>(service);
  return service;
}

void registerServices() {
  getAndRegisterZipCodeService();
}

void unregisterService() {
  locator.unregister<ZipCodeService>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}

const countries = [
  Country(name: 'Afghanistan', flag: '', iso2: 'AF', iso3: 'AFG'),
  Country(name: 'Albania', flag: '', iso2: 'AL', iso3: 'ALB'),
  Country(name: 'Algeria', flag: '', iso2: 'DZ', iso3: 'DZA'),
];

const zipCodeInformation = ZipCodeInformation(
  postCode: '97302',
  country: 'Mexico',
  countryAbbreviation: 'MX',
  places: [
    Place(
      name: 'Dzitya',
      longitude: '-89.7"',
      latitude: '21.05',
      state: 'Yucatan',
      stateAbbreviation: 'YUC',
    )
  ],
);