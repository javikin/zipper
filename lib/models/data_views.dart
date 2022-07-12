import 'package:zipper/models/data_models.dart';

class ZipCodeView {
  final String code;
  final String country;
  final List<PlaceView> places;

  ZipCodeView({
    required this.code,
    required this.country,
    required this.places,
  });

  ZipCodeView.fromZipCodeInformation(ZipCodeInformation zipCodeInformation)
      : code = zipCodeInformation.postCode,
        country = zipCodeInformation.country,
        places = zipCodeInformation.places.map((e) => PlaceView.fromPlace(e)).toList();
}

class CountryView {
  final String name;
  final String flag;
  final String code;
  CountryView({
    required this.name,
    required this.flag,
    required this.code,
  });

  CountryView.fromCountry(Country country)
      : name = country.name,
        flag = country.flag,
        code = country.iso2;
}

class PlaceView {
  final String name;
  final String state;

  PlaceView({
    required this.name,
    required this.state,
  });

  PlaceView.fromPlace(Place place)
      : name = place.name,
        state = place.state;
}
