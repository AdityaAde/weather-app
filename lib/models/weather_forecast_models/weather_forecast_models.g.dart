// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'weather_forecast_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherForecastModels _$$_WeatherForecastModelsFromJson(Map<String, dynamic> json) => _$_WeatherForecastModels(
      cod: json['cod'] as String,
      list: (json['list'] as List<dynamic>).map((e) => ElementModels.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$_WeatherForecastModelsToJson(_$_WeatherForecastModels instance) => <String, dynamic>{
      'cod': instance.cod,
      'list': instance.list,
    };

_$_ElementModels _$$_ElementModelsFromJson(Map<String, dynamic> json) => _$_ElementModels(
      main: MainModels.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>).map((e) => Weather.fromJson(e as Map<String, dynamic>)).toList(),
      dtTxt: json['dt_txt'] as String,
    );

Map<String, dynamic> _$$_ElementModelsToJson(_$_ElementModels instance) => <String, dynamic>{
      'main': instance.main,
      'weather': instance.weather,
      'dt_txt': instance.dtTxt,
    };

_$_MainModels _$$_MainModelsFromJson(Map<String, dynamic> json) => _$_MainModels(
      temp: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MainModelsToJson(_$_MainModels instance) => <String, dynamic>{
      'temp': instance.temp,
    };

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) => <String, dynamic>{
      'description': instance.description,
    };
