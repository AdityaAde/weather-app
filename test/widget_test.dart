import 'package:weather_app/repositories/city_weather/city_weather_repository.dart';
import 'package:weather_app/repositories/current_location_weather/current_location_weather.dart';

void main() async {
  CityWeatherRepository cityWeatherRepository = CityWeatherRepository();
  await cityWeatherRepository.getCityWeather('Jatibening');

  CurrentLocationWeatherRepository currentLocationWeatherRepository = CurrentLocationWeatherRepository();
  await currentLocationWeatherRepository.getCurrentLocationWeather();
}
