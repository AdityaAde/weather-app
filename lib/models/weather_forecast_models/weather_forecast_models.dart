// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast_models.freezed.dart';
part 'weather_forecast_models.g.dart';

@freezed
class WeatherForecastModels with _$WeatherForecastModels {
  const factory WeatherForecastModels({
    required String cod,
    required List<ElementModels> list,
  }) = _WeatherForecastModels;

  factory WeatherForecastModels.fromJson(Map<String, dynamic> json) => _$WeatherForecastModelsFromJson(json);
}

@freezed
class ElementModels with _$ElementModels {
  const factory ElementModels({
    required MainModels main,
    required List<Weather> weather,
    required String dtTxt,
  }) = _ElementModels;

  factory ElementModels.fromJson(Map<String, dynamic> json) => _$ElementModelsFromJson(json);
}

@freezed
class MainModels with _$MainModels {
  const factory MainModels({
    required double temp,
  }) = _MainModels;

  factory MainModels.fromJson(Map<String, dynamic> json) => _$MainModelsFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String description,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}
