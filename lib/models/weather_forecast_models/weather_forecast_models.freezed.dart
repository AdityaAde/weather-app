// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_forecast_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherForecastModels _$WeatherForecastModelsFromJson(
    Map<String, dynamic> json) {
  return _WeatherForecastModels.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastModels {
  String get cod => throw _privateConstructorUsedError;
  List<ElementModels> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastModelsCopyWith<WeatherForecastModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastModelsCopyWith<$Res> {
  factory $WeatherForecastModelsCopyWith(WeatherForecastModels value,
          $Res Function(WeatherForecastModels) then) =
      _$WeatherForecastModelsCopyWithImpl<$Res>;
  $Res call({String cod, List<ElementModels> list});
}

/// @nodoc
class _$WeatherForecastModelsCopyWithImpl<$Res>
    implements $WeatherForecastModelsCopyWith<$Res> {
  _$WeatherForecastModelsCopyWithImpl(this._value, this._then);

  final WeatherForecastModels _value;
  // ignore: unused_field
  final $Res Function(WeatherForecastModels) _then;

  @override
  $Res call({
    Object? cod = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ElementModels>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherForecastModelsCopyWith<$Res>
    implements $WeatherForecastModelsCopyWith<$Res> {
  factory _$$_WeatherForecastModelsCopyWith(_$_WeatherForecastModels value,
          $Res Function(_$_WeatherForecastModels) then) =
      __$$_WeatherForecastModelsCopyWithImpl<$Res>;
  @override
  $Res call({String cod, List<ElementModels> list});
}

/// @nodoc
class __$$_WeatherForecastModelsCopyWithImpl<$Res>
    extends _$WeatherForecastModelsCopyWithImpl<$Res>
    implements _$$_WeatherForecastModelsCopyWith<$Res> {
  __$$_WeatherForecastModelsCopyWithImpl(_$_WeatherForecastModels _value,
      $Res Function(_$_WeatherForecastModels) _then)
      : super(_value, (v) => _then(v as _$_WeatherForecastModels));

  @override
  _$_WeatherForecastModels get _value =>
      super._value as _$_WeatherForecastModels;

  @override
  $Res call({
    Object? cod = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_WeatherForecastModels(
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ElementModels>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherForecastModels implements _WeatherForecastModels {
  const _$_WeatherForecastModels(
      {required this.cod, required final List<ElementModels> list})
      : _list = list;

  factory _$_WeatherForecastModels.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherForecastModelsFromJson(json);

  @override
  final String cod;
  final List<ElementModels> _list;
  @override
  List<ElementModels> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'WeatherForecastModels(cod: $cod, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherForecastModels &&
            const DeepCollectionEquality().equals(other.cod, cod) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cod),
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherForecastModelsCopyWith<_$_WeatherForecastModels> get copyWith =>
      __$$_WeatherForecastModelsCopyWithImpl<_$_WeatherForecastModels>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherForecastModelsToJson(
      this,
    );
  }
}

abstract class _WeatherForecastModels implements WeatherForecastModels {
  const factory _WeatherForecastModels(
      {required final String cod,
      required final List<ElementModels> list}) = _$_WeatherForecastModels;

  factory _WeatherForecastModels.fromJson(Map<String, dynamic> json) =
      _$_WeatherForecastModels.fromJson;

  @override
  String get cod;
  @override
  List<ElementModels> get list;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherForecastModelsCopyWith<_$_WeatherForecastModels> get copyWith =>
      throw _privateConstructorUsedError;
}

ElementModels _$ElementModelsFromJson(Map<String, dynamic> json) {
  return _ElementModels.fromJson(json);
}

/// @nodoc
mixin _$ElementModels {
  MainModels get main => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  String get dtTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementModelsCopyWith<ElementModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementModelsCopyWith<$Res> {
  factory $ElementModelsCopyWith(
          ElementModels value, $Res Function(ElementModels) then) =
      _$ElementModelsCopyWithImpl<$Res>;
  $Res call({MainModels main, List<Weather> weather, String dtTxt});

  $MainModelsCopyWith<$Res> get main;
}

/// @nodoc
class _$ElementModelsCopyWithImpl<$Res>
    implements $ElementModelsCopyWith<$Res> {
  _$ElementModelsCopyWithImpl(this._value, this._then);

  final ElementModels _value;
  // ignore: unused_field
  final $Res Function(ElementModels) _then;

  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? dtTxt = freezed,
  }) {
    return _then(_value.copyWith(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModels,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      dtTxt: dtTxt == freezed
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $MainModelsCopyWith<$Res> get main {
    return $MainModelsCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }
}

/// @nodoc
abstract class _$$_ElementModelsCopyWith<$Res>
    implements $ElementModelsCopyWith<$Res> {
  factory _$$_ElementModelsCopyWith(
          _$_ElementModels value, $Res Function(_$_ElementModels) then) =
      __$$_ElementModelsCopyWithImpl<$Res>;
  @override
  $Res call({MainModels main, List<Weather> weather, String dtTxt});

  @override
  $MainModelsCopyWith<$Res> get main;
}

/// @nodoc
class __$$_ElementModelsCopyWithImpl<$Res>
    extends _$ElementModelsCopyWithImpl<$Res>
    implements _$$_ElementModelsCopyWith<$Res> {
  __$$_ElementModelsCopyWithImpl(
      _$_ElementModels _value, $Res Function(_$_ElementModels) _then)
      : super(_value, (v) => _then(v as _$_ElementModels));

  @override
  _$_ElementModels get _value => super._value as _$_ElementModels;

  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? dtTxt = freezed,
  }) {
    return _then(_$_ElementModels(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModels,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      dtTxt: dtTxt == freezed
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElementModels implements _ElementModels {
  const _$_ElementModels(
      {required this.main,
      required final List<Weather> weather,
      required this.dtTxt})
      : _weather = weather;

  factory _$_ElementModels.fromJson(Map<String, dynamic> json) =>
      _$$_ElementModelsFromJson(json);

  @override
  final MainModels main;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final String dtTxt;

  @override
  String toString() {
    return 'ElementModels(main: $main, weather: $weather, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementModels &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.dtTxt, dtTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(dtTxt));

  @JsonKey(ignore: true)
  @override
  _$$_ElementModelsCopyWith<_$_ElementModels> get copyWith =>
      __$$_ElementModelsCopyWithImpl<_$_ElementModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElementModelsToJson(
      this,
    );
  }
}

abstract class _ElementModels implements ElementModels {
  const factory _ElementModels(
      {required final MainModels main,
      required final List<Weather> weather,
      required final String dtTxt}) = _$_ElementModels;

  factory _ElementModels.fromJson(Map<String, dynamic> json) =
      _$_ElementModels.fromJson;

  @override
  MainModels get main;
  @override
  List<Weather> get weather;
  @override
  String get dtTxt;
  @override
  @JsonKey(ignore: true)
  _$$_ElementModelsCopyWith<_$_ElementModels> get copyWith =>
      throw _privateConstructorUsedError;
}

MainModels _$MainModelsFromJson(Map<String, dynamic> json) {
  return _MainModels.fromJson(json);
}

/// @nodoc
mixin _$MainModels {
  double get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainModelsCopyWith<MainModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainModelsCopyWith<$Res> {
  factory $MainModelsCopyWith(
          MainModels value, $Res Function(MainModels) then) =
      _$MainModelsCopyWithImpl<$Res>;
  $Res call({double temp});
}

/// @nodoc
class _$MainModelsCopyWithImpl<$Res> implements $MainModelsCopyWith<$Res> {
  _$MainModelsCopyWithImpl(this._value, this._then);

  final MainModels _value;
  // ignore: unused_field
  final $Res Function(MainModels) _then;

  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_MainModelsCopyWith<$Res>
    implements $MainModelsCopyWith<$Res> {
  factory _$$_MainModelsCopyWith(
          _$_MainModels value, $Res Function(_$_MainModels) then) =
      __$$_MainModelsCopyWithImpl<$Res>;
  @override
  $Res call({double temp});
}

/// @nodoc
class __$$_MainModelsCopyWithImpl<$Res> extends _$MainModelsCopyWithImpl<$Res>
    implements _$$_MainModelsCopyWith<$Res> {
  __$$_MainModelsCopyWithImpl(
      _$_MainModels _value, $Res Function(_$_MainModels) _then)
      : super(_value, (v) => _then(v as _$_MainModels));

  @override
  _$_MainModels get _value => super._value as _$_MainModels;

  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_$_MainModels(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainModels implements _MainModels {
  const _$_MainModels({required this.temp});

  factory _$_MainModels.fromJson(Map<String, dynamic> json) =>
      _$$_MainModelsFromJson(json);

  @override
  final double temp;

  @override
  String toString() {
    return 'MainModels(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainModels &&
            const DeepCollectionEquality().equals(other.temp, temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(temp));

  @JsonKey(ignore: true)
  @override
  _$$_MainModelsCopyWith<_$_MainModels> get copyWith =>
      __$$_MainModelsCopyWithImpl<_$_MainModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainModelsToJson(
      this,
    );
  }
}

abstract class _MainModels implements MainModels {
  const factory _MainModels({required final double temp}) = _$_MainModels;

  factory _MainModels.fromJson(Map<String, dynamic> json) =
      _$_MainModels.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(ignore: true)
  _$$_MainModelsCopyWith<_$_MainModels> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, (v) => _then(v as _$_Weather));

  @override
  _$_Weather get _value => super._value as _$_Weather;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$_Weather(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  const _$_Weather({required this.description});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final String description;

  @override
  String toString() {
    return 'Weather(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather({required final String description}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
