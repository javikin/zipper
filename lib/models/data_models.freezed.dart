// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  String get name => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  String get iso2 => throw _privateConstructorUsedError;
  String get iso3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call({String name, String flag, String iso2, String iso3});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? flag = freezed,
    Object? iso2 = freezed,
    Object? iso3 = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      iso2: iso2 == freezed
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String,
      iso3: iso3 == freezed
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$_CountryCopyWith(
          _$_Country value, $Res Function(_$_Country) then) =
      __$$_CountryCopyWithImpl<$Res>;
  @override
  $Res call({String name, String flag, String iso2, String iso3});
}

/// @nodoc
class __$$_CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$$_CountryCopyWith<$Res> {
  __$$_CountryCopyWithImpl(_$_Country _value, $Res Function(_$_Country) _then)
      : super(_value, (v) => _then(v as _$_Country));

  @override
  _$_Country get _value => super._value as _$_Country;

  @override
  $Res call({
    Object? name = freezed,
    Object? flag = freezed,
    Object? iso2 = freezed,
    Object? iso3 = freezed,
  }) {
    return _then(_$_Country(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      iso2: iso2 == freezed
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String,
      iso3: iso3 == freezed
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country implements _Country {
  const _$_Country(
      {required this.name,
      required this.flag,
      required this.iso2,
      required this.iso3});

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  final String name;
  @override
  final String flag;
  @override
  final String iso2;
  @override
  final String iso3;

  @override
  String toString() {
    return 'Country(name: $name, flag: $flag, iso2: $iso2, iso3: $iso3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Country &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other.iso2, iso2) &&
            const DeepCollectionEquality().equals(other.iso3, iso3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(iso2),
      const DeepCollectionEquality().hash(iso3));

  @JsonKey(ignore: true)
  @override
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      __$$_CountryCopyWithImpl<_$_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(this);
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {required final String name,
      required final String flag,
      required final String iso2,
      required final String iso3}) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  String get name;
  @override
  String get flag;
  @override
  String get iso2;
  @override
  String get iso3;
  @override
  @JsonKey(ignore: true)
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      throw _privateConstructorUsedError;
}

ZipCodeInformation _$ZipCodeInformationFromJson(Map<String, dynamic> json) {
  return _ZipCodeInformation.fromJson(json);
}

/// @nodoc
mixin _$ZipCodeInformation {
  @JsonKey(name: 'post code')
  String get postCode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'country abbreviation')
  String get countryAbbreviation => throw _privateConstructorUsedError;
  List<Place> get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZipCodeInformationCopyWith<ZipCodeInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZipCodeInformationCopyWith<$Res> {
  factory $ZipCodeInformationCopyWith(
          ZipCodeInformation value, $Res Function(ZipCodeInformation) then) =
      _$ZipCodeInformationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'post code') String postCode,
      String country,
      @JsonKey(name: 'country abbreviation') String countryAbbreviation,
      List<Place> places});
}

/// @nodoc
class _$ZipCodeInformationCopyWithImpl<$Res>
    implements $ZipCodeInformationCopyWith<$Res> {
  _$ZipCodeInformationCopyWithImpl(this._value, this._then);

  final ZipCodeInformation _value;
  // ignore: unused_field
  final $Res Function(ZipCodeInformation) _then;

  @override
  $Res call({
    Object? postCode = freezed,
    Object? country = freezed,
    Object? countryAbbreviation = freezed,
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      countryAbbreviation: countryAbbreviation == freezed
          ? _value.countryAbbreviation
          : countryAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc
abstract class _$$_ZipCodeInformationCopyWith<$Res>
    implements $ZipCodeInformationCopyWith<$Res> {
  factory _$$_ZipCodeInformationCopyWith(_$_ZipCodeInformation value,
          $Res Function(_$_ZipCodeInformation) then) =
      __$$_ZipCodeInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'post code') String postCode,
      String country,
      @JsonKey(name: 'country abbreviation') String countryAbbreviation,
      List<Place> places});
}

/// @nodoc
class __$$_ZipCodeInformationCopyWithImpl<$Res>
    extends _$ZipCodeInformationCopyWithImpl<$Res>
    implements _$$_ZipCodeInformationCopyWith<$Res> {
  __$$_ZipCodeInformationCopyWithImpl(
      _$_ZipCodeInformation _value, $Res Function(_$_ZipCodeInformation) _then)
      : super(_value, (v) => _then(v as _$_ZipCodeInformation));

  @override
  _$_ZipCodeInformation get _value => super._value as _$_ZipCodeInformation;

  @override
  $Res call({
    Object? postCode = freezed,
    Object? country = freezed,
    Object? countryAbbreviation = freezed,
    Object? places = freezed,
  }) {
    return _then(_$_ZipCodeInformation(
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      countryAbbreviation: countryAbbreviation == freezed
          ? _value.countryAbbreviation
          : countryAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      places: places == freezed
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ZipCodeInformation implements _ZipCodeInformation {
  const _$_ZipCodeInformation(
      {@JsonKey(name: 'post code') required this.postCode,
      required this.country,
      @JsonKey(name: 'country abbreviation') required this.countryAbbreviation,
      required final List<Place> places})
      : _places = places;

  factory _$_ZipCodeInformation.fromJson(Map<String, dynamic> json) =>
      _$$_ZipCodeInformationFromJson(json);

  @override
  @JsonKey(name: 'post code')
  final String postCode;
  @override
  final String country;
  @override
  @JsonKey(name: 'country abbreviation')
  final String countryAbbreviation;
  final List<Place> _places;
  @override
  List<Place> get places {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'ZipCodeInformation(postCode: $postCode, country: $country, countryAbbreviation: $countryAbbreviation, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZipCodeInformation &&
            const DeepCollectionEquality().equals(other.postCode, postCode) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.countryAbbreviation, countryAbbreviation) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postCode),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(countryAbbreviation),
      const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  _$$_ZipCodeInformationCopyWith<_$_ZipCodeInformation> get copyWith =>
      __$$_ZipCodeInformationCopyWithImpl<_$_ZipCodeInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZipCodeInformationToJson(this);
  }
}

abstract class _ZipCodeInformation implements ZipCodeInformation {
  const factory _ZipCodeInformation(
      {@JsonKey(name: 'post code')
          required final String postCode,
      required final String country,
      @JsonKey(name: 'country abbreviation')
          required final String countryAbbreviation,
      required final List<Place> places}) = _$_ZipCodeInformation;

  factory _ZipCodeInformation.fromJson(Map<String, dynamic> json) =
      _$_ZipCodeInformation.fromJson;

  @override
  @JsonKey(name: 'post code')
  String get postCode;
  @override
  String get country;
  @override
  @JsonKey(name: 'country abbreviation')
  String get countryAbbreviation;
  @override
  List<Place> get places;
  @override
  @JsonKey(ignore: true)
  _$$_ZipCodeInformationCopyWith<_$_ZipCodeInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  @JsonKey(name: 'place name')
  String get name => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'state abbreviation')
  String get stateAbbreviation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'place name') String name,
      String longitude,
      String latitude,
      String state,
      @JsonKey(name: 'state abbreviation') String stateAbbreviation});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? state = freezed,
    Object? stateAbbreviation = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateAbbreviation: stateAbbreviation == freezed
          ? _value.stateAbbreviation
          : stateAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'place name') String name,
      String longitude,
      String latitude,
      String state,
      @JsonKey(name: 'state abbreviation') String stateAbbreviation});
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, (v) => _then(v as _$_Place));

  @override
  _$_Place get _value => super._value as _$_Place;

  @override
  $Res call({
    Object? name = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? state = freezed,
    Object? stateAbbreviation = freezed,
  }) {
    return _then(_$_Place(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateAbbreviation: stateAbbreviation == freezed
          ? _value.stateAbbreviation
          : stateAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place implements _Place {
  const _$_Place(
      {@JsonKey(name: 'place name') required this.name,
      required this.longitude,
      required this.latitude,
      required this.state,
      @JsonKey(name: 'state abbreviation') required this.stateAbbreviation});

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFromJson(json);

  @override
  @JsonKey(name: 'place name')
  final String name;
  @override
  final String longitude;
  @override
  final String latitude;
  @override
  final String state;
  @override
  @JsonKey(name: 'state abbreviation')
  final String stateAbbreviation;

  @override
  String toString() {
    return 'Place(name: $name, longitude: $longitude, latitude: $latitude, state: $state, stateAbbreviation: $stateAbbreviation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Place &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.stateAbbreviation, stateAbbreviation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(stateAbbreviation));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      __$$_PlaceCopyWithImpl<_$_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToJson(this);
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {@JsonKey(name: 'place name')
          required final String name,
      required final String longitude,
      required final String latitude,
      required final String state,
      @JsonKey(name: 'state abbreviation')
          required final String stateAbbreviation}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  @JsonKey(name: 'place name')
  String get name;
  @override
  String get longitude;
  @override
  String get latitude;
  @override
  String get state;
  @override
  @JsonKey(name: 'state abbreviation')
  String get stateAbbreviation;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      throw _privateConstructorUsedError;
}
