import 'package:weather_app/models/city_weather_models.dart';
import 'package:weather_app/repositories/city_weather/base_city_weather_repository.dart';

import '../../config/static_data.dart';
import '../../utils/network.dart';

class CityWeatherRepository extends BaseCityWeatherRepository {
  @override
  Future<CityWeatherModels> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
      '${StaticData.weatherUrl}?q=$cityName&appid=${StaticData.apiKey}&units=netric',
    );

    var weatherData = await networkHelper.getData();
    return CityWeatherModels.fromJson(weatherData);
  }
}
