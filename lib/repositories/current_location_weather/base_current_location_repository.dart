import 'package:weather_app/models/current_location_weather_models/current_location_weather_models.dart';

abstract class BaseCurrentLocationWeatherRepository {
  Future<CurrentLocationWeatherModels?>? getCurrentLocationWeather();
}
