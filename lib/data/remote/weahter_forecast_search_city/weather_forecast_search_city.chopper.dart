// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_search_city.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WeatherForecastSearchCityService
    extends WeatherForecastSearchCityService {
  _$WeatherForecastSearchCityService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeatherForecastSearchCityService;

  @override
  Future<Response<dynamic>> getWeatherForecastSearchCity(
      String cityName, String apiKey) {
    final $url = '?q=${cityName}&appid=${apiKey}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
