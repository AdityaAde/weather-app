// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast_models.freezed.dart';
part 'weather_forecast_models.g.dart';

@freezed
class WeatherForecastModels with _$WeatherForecastModels {
  const factory WeatherForecastModels({
    required String cod,
    required List<ListElement> list,
  }) = _WeatherForecastModels;

  factory WeatherForecastModels.fromJson(Map<String, dynamic> json) => _$WeatherForecastModelsFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  const factory ListElement({
    required MainClass main,
    required List<Weather> weather,
    required String dtTxt,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) => _$ListElementFromJson(json);
}

@freezed
class MainClass with _$MainClass {
  const factory MainClass({
    required double temp,
  }) = _MainClass;

  factory MainClass.fromJson(Map<String, dynamic> json) => _$MainClassFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String description,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}
