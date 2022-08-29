import '../../config/static_data.dart';
import '../../models/current_location_weather_models.dart';
import '../../utils/network.dart';
import 'city_weather.dart';

class CityWeatherRepository extends BaseCityWeatherRepository {
  @override
  Future<CurrentLocationWeatherModels> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
      '${StaticData.weatherUrl}?q=$cityName&appid=${StaticData.apiKey}&units=netric',
    );

    var weatherData = await networkHelper.getData();
    return CurrentLocationWeatherModels.fromJson(weatherData);
  }
}
