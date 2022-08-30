// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'weather_forecast_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherForecastModels _$$_WeatherForecastModelsFromJson(Map<String, dynamic> json) => _$_WeatherForecastModels(
      cod: json['cod'] as String,
      list: (json['list'] as List<dynamic>).map((e) => ListElement.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$_WeatherForecastModelsToJson(_$_WeatherForecastModels instance) => <String, dynamic>{
      'cod': instance.cod,
      'list': instance.list,
    };

_$_ListElement _$$_ListElementFromJson(Map<String, dynamic> json) => _$_ListElement(
      main: MainClass.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>).map((e) => Weather.fromJson(e as Map<String, dynamic>)).toList(),
      dtTxt: json['dt_txt'] as String,
    );

Map<String, dynamic> _$$_ListElementToJson(_$_ListElement instance) => <String, dynamic>{
      'main': instance.main,
      'weather': instance.weather,
      'dt_txt': instance.dtTxt,
    };

_$_MainClass _$$_MainClassFromJson(Map<String, dynamic> json) => _$_MainClass(
      temp: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MainClassToJson(_$_MainClass instance) => <String, dynamic>{
      'temp': instance.temp,
    };

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) => <String, dynamic>{
      'description': instance.description,
    };
