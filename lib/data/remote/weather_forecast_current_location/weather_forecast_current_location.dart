import 'package:chopper/chopper.dart';
import 'package:weather_app/component/static_data.dart';

part 'weather_forecast_current_location.chopper.dart';

@ChopperApi()
abstract class WeatherForecastCurrentLocationService extends ChopperService {
  // helper methods that help you instantiate your service
  static WeatherForecastCurrentLocationService create() {
    final client = ChopperClient(
      baseUrl: 'https://${StaticData.weatherForecastUrl}',
      services: [_$WeatherForecastCurrentLocationService()],
      converter: const JsonConverter(),
    );
    return _$WeatherForecastCurrentLocationService(client);
  }

  @Get(path: '?lat={lat}&lon={lon}&appid={apiKey}')
  Future<Response> getWeatherForecastCurrentLocation(
    @Path('lat') final String lat,
    @Path('lon') final String lon,
    @Path('apiKey') final String apiKey,
  );
}
