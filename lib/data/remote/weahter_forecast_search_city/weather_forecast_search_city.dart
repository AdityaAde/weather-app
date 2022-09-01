import 'package:chopper/chopper.dart';
import '../../../component/static_data.dart';

part 'weather_forecast_search_city.chopper.dart';

@ChopperApi()
abstract class WeatherForecastSearchCityService extends ChopperService {
  // helper methods that help you instantiate your service
  static WeatherForecastSearchCityService create() {
    final client = ChopperClient(
      baseUrl: 'https://${StaticData.weatherForecastUrl}',
      services: [_$WeatherForecastSearchCityService()],
      converter: const JsonConverter(),
    );
    return _$WeatherForecastSearchCityService(client);
  }

  @Get(path: '?q={q}&appid={apiKey}')
  Future<Response> getWeatherForecastSearchCity(
    @Path('q') final String cityName,
    @Path('apiKey') final String apiKey,
  );
}
