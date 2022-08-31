import '../../component/static_data.dart';
import '../../models/current_location_weather_models/current_location_weather_models.dart';
import '../../helper/network.dart';
import 'city_weather.dart';

class CityWeatherRepository extends BaseCityWeatherRepository {
  @override
  Future<CurrentLocationWeatherModels?>? getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
      '${StaticData.weatherUrl}?q=$cityName&appid=${StaticData.apiKey}&units=netric',
    );

    try {
      var weatherData = await networkHelper.getData();
      if (weatherData != null) {
        return CurrentLocationWeatherModels.fromJson(weatherData);
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
