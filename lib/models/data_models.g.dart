// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      name: json['name'] as String,
      flag: json['flag'] as String,
      iso2: json['iso2'] as String,
      iso3: json['iso3'] as String,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flag': instance.flag,
      'iso2': instance.iso2,
      'iso3': instance.iso3,
    };

_$_ZipCodeInformation _$$_ZipCodeInformationFromJson(
        Map<String, dynamic> json) =>
    _$_ZipCodeInformation(
      postCode: json['post code'] as String,
      country: json['country'] as String,
      countryAbbreviation: json['country abbreviation'] as String,
      places: (json['places'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ZipCodeInformationToJson(
        _$_ZipCodeInformation instance) =>
    <String, dynamic>{
      'post code': instance.postCode,
      'country': instance.country,
      'country abbreviation': instance.countryAbbreviation,
      'places': instance.places,
    };

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      name: json['place name'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      state: json['state'] as String,
      stateAbbreviation: json['state abbreviation'] as String,
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'place name': instance.name,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'state': instance.state,
      'state abbreviation': instance.stateAbbreviation,
    };
