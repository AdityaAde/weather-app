// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_current_location.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WeatherForecastCurrentLocationService
    extends WeatherForecastCurrentLocationService {
  _$WeatherForecastCurrentLocationService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeatherForecastCurrentLocationService;

  @override
  Future<Response<dynamic>> getWeatherForecastCurrentLocation(
      String lat, String lon, String apiKey) {
    final $url = '?lat=${lat}&lon=${lon}&appid=${apiKey}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
