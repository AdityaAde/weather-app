import 'package:weather_app/models/city_weather_models.dart';

abstract class BaseCityWeatherRepository {
  Future<CityWeatherModels> getCityWeather(String cityName);
}
