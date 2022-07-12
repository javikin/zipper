import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_models.freezed.dart';
part 'data_models.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required String unicodeFlag,
    required String iso2,
    required String iso3,
  }) = _Country;

  factory Country.fromJson(Map<String, Object?> json) => _$CountryFromJson(json);
}

@freezed
class ZipCodeInformation with _$ZipCodeInformation {
  const factory ZipCodeInformation({
    @JsonKey(name: 'post code') required String postCode,
    required String country,
    @JsonKey(name: 'country abbreviation') required String countryAbbreviation,
    required List<Place> places,
  }) = _ZipCodeInformation;

  factory ZipCodeInformation.fromJson(Map<String, Object?> json) => _$ZipCodeInformationFromJson(json);
}

@freezed
class Place with _$Place {
  const factory Place({
    @JsonKey(name: 'place name') required String name,
    required String longitude,
    required String latitude,
    required String state,
    @JsonKey(name: 'state abbreviation') required String stateAbbreviation,
  }) = _Place;

  factory Place.fromJson(Map<String, Object?> json) => _$PlaceFromJson(json);
}
