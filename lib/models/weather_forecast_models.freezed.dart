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

WeatherForecastModels _$WeatherForecastModelsFromJson(Map<String, dynamic> json) {
  return _WeatherForecastModels.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastModels {
  String get cod => throw _privateConstructorUsedError; //  required int message,
// required int cnt,
  List<ListElement> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastModelsCopyWith<WeatherForecastModels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastModelsCopyWith<$Res> {
  factory $WeatherForecastModelsCopyWith(WeatherForecastModels value, $Res Function(WeatherForecastModels) then) =
      _$WeatherForecastModelsCopyWithImpl<$Res>;
  $Res call({String cod, List<ListElement> list});
}

/// @nodoc
class _$WeatherForecastModelsCopyWithImpl<$Res> implements $WeatherForecastModelsCopyWith<$Res> {
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
              as List<ListElement>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherForecastModelsCopyWith<$Res> implements $WeatherForecastModelsCopyWith<$Res> {
  factory _$$_WeatherForecastModelsCopyWith(
          _$_WeatherForecastModels value, $Res Function(_$_WeatherForecastModels) then) =
      __$$_WeatherForecastModelsCopyWithImpl<$Res>;
  @override
  $Res call({String cod, List<ListElement> list});
}

/// @nodoc
class __$$_WeatherForecastModelsCopyWithImpl<$Res> extends _$WeatherForecastModelsCopyWithImpl<$Res>
    implements _$$_WeatherForecastModelsCopyWith<$Res> {
  __$$_WeatherForecastModelsCopyWithImpl(_$_WeatherForecastModels _value, $Res Function(_$_WeatherForecastModels) _then)
      : super(_value, (v) => _then(v as _$_WeatherForecastModels));

  @override
  _$_WeatherForecastModels get _value => super._value as _$_WeatherForecastModels;

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
              as List<ListElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherForecastModels implements _WeatherForecastModels {
  const _$_WeatherForecastModels({required this.cod, required final List<ListElement> list}) : _list = list;

  factory _$_WeatherForecastModels.fromJson(Map<String, dynamic> json) => _$$_WeatherForecastModelsFromJson(json);

  @override
  final String cod;
  final List<ListElement> _list;

  @override
  List<ListElement> get list {
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
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cod), const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherForecastModelsCopyWith<_$_WeatherForecastModels> get copyWith =>
      __$$_WeatherForecastModelsCopyWithImpl<_$_WeatherForecastModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherForecastModelsToJson(
      this,
    );
  }
}

abstract class _WeatherForecastModels implements WeatherForecastModels {
  const factory _WeatherForecastModels({required final String cod, required final List<ListElement> list}) =
      _$_WeatherForecastModels;

  factory _WeatherForecastModels.fromJson(Map<String, dynamic> json) = _$_WeatherForecastModels.fromJson;

  @override
  String get cod;
  @override
  List<ListElement> get list;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherForecastModelsCopyWith<_$_WeatherForecastModels> get copyWith => throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
//required int dt,
  MainClass get main => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  String get dtTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListElementCopyWith<ListElement> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(ListElement value, $Res Function(ListElement) then) = _$ListElementCopyWithImpl<$Res>;
  $Res call({MainClass main, List<Weather> weather, String dtTxt});

  $MainClassCopyWith<$Res> get main;
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res> implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

  final ListElement _value;
  // ignore: unused_field
  final $Res Function(ListElement) _then;

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
              as MainClass,
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
  $MainClassCopyWith<$Res> get main {
    return $MainClassCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }
}

/// @nodoc
abstract class _$$_ListElementCopyWith<$Res> implements $ListElementCopyWith<$Res> {
  factory _$$_ListElementCopyWith(_$_ListElement value, $Res Function(_$_ListElement) then) =
      __$$_ListElementCopyWithImpl<$Res>;
  @override
  $Res call({MainClass main, List<Weather> weather, String dtTxt});

  @override
  $MainClassCopyWith<$Res> get main;
}

/// @nodoc
class __$$_ListElementCopyWithImpl<$Res> extends _$ListElementCopyWithImpl<$Res>
    implements _$$_ListElementCopyWith<$Res> {
  __$$_ListElementCopyWithImpl(_$_ListElement _value, $Res Function(_$_ListElement) _then)
      : super(_value, (v) => _then(v as _$_ListElement));

  @override
  _$_ListElement get _value => super._value as _$_ListElement;

  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? dtTxt = freezed,
  }) {
    return _then(_$_ListElement(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainClass,
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
class _$_ListElement implements _ListElement {
  const _$_ListElement({required this.main, required final List<Weather> weather, required this.dtTxt})
      : _weather = weather;

  factory _$_ListElement.fromJson(Map<String, dynamic> json) => _$$_ListElementFromJson(json);

  @override
  final MainClass main;
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
    return 'ListElement(main: $main, weather: $weather, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListElement &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.dtTxt, dtTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(_weather), const DeepCollectionEquality().hash(dtTxt));

  @JsonKey(ignore: true)
  @override
  _$$_ListElementCopyWith<_$_ListElement> get copyWith =>
      __$$_ListElementCopyWithImpl<_$_ListElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListElementToJson(
      this,
    );
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement(
      {required final MainClass main,
      required final List<Weather> weather,
      required final String dtTxt}) = _$_ListElement;

  factory _ListElement.fromJson(Map<String, dynamic> json) = _$_ListElement.fromJson;

  @override
  MainClass get main;
  @override
  List<Weather> get weather;
  @override
  String get dtTxt;
  @override
  @JsonKey(ignore: true)
  _$$_ListElementCopyWith<_$_ListElement> get copyWith => throw _privateConstructorUsedError;
}

MainClass _$MainClassFromJson(Map<String, dynamic> json) {
  return _MainClass.fromJson(json);
}

/// @nodoc
mixin _$MainClass {
  double get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainClassCopyWith<MainClass> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainClassCopyWith<$Res> {
  factory $MainClassCopyWith(MainClass value, $Res Function(MainClass) then) = _$MainClassCopyWithImpl<$Res>;
  $Res call({double temp});
}

/// @nodoc
class _$MainClassCopyWithImpl<$Res> implements $MainClassCopyWith<$Res> {
  _$MainClassCopyWithImpl(this._value, this._then);

  final MainClass _value;
  // ignore: unused_field
  final $Res Function(MainClass) _then;

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
abstract class _$$_MainClassCopyWith<$Res> implements $MainClassCopyWith<$Res> {
  factory _$$_MainClassCopyWith(_$_MainClass value, $Res Function(_$_MainClass) then) =
      __$$_MainClassCopyWithImpl<$Res>;
  @override
  $Res call({double temp});
}

/// @nodoc
class __$$_MainClassCopyWithImpl<$Res> extends _$MainClassCopyWithImpl<$Res> implements _$$_MainClassCopyWith<$Res> {
  __$$_MainClassCopyWithImpl(_$_MainClass _value, $Res Function(_$_MainClass) _then)
      : super(_value, (v) => _then(v as _$_MainClass));

  @override
  _$_MainClass get _value => super._value as _$_MainClass;

  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_$_MainClass(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainClass implements _MainClass {
  const _$_MainClass({required this.temp});

  factory _$_MainClass.fromJson(Map<String, dynamic> json) => _$$_MainClassFromJson(json);

  @override
  final double temp;

  @override
  String toString() {
    return 'MainClass(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainClass &&
            const DeepCollectionEquality().equals(other.temp, temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(temp));

  @JsonKey(ignore: true)
  @override
  _$$_MainClassCopyWith<_$_MainClass> get copyWith => __$$_MainClassCopyWithImpl<_$_MainClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainClassToJson(
      this,
    );
  }
}

abstract class _MainClass implements MainClass {
  const factory _MainClass({required final double temp}) = _$_MainClass;

  factory _MainClass.fromJson(Map<String, dynamic> json) = _$_MainClass.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(ignore: true)
  _$$_MainClassCopyWith<_$_MainClass> get copyWith => throw _privateConstructorUsedError;
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
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) = _$WeatherCopyWithImpl<$Res>;
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
  factory _$$_WeatherCopyWith(_$_Weather value, $Res Function(_$_Weather) then) = __$$_WeatherCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res> implements _$$_WeatherCopyWith<$Res> {
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

  factory _$_Weather.fromJson(Map<String, dynamic> json) => _$$_WeatherFromJson(json);

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
            const DeepCollectionEquality().equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherCopyWith<_$_Weather> get copyWith => __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

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
  _$$_WeatherCopyWith<_$_Weather> get copyWith => throw _privateConstructorUsedError;
}
