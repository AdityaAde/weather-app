import 'package:weather_app/services/location.dart';
import 'package:weather_app/services/network.dart';

class WeatherModel {
  String apiKey = '5352e632cf9f09a11c469d39c87a2d83';
  String openWeatherMapUrl = 'https://api.openweathermap.org/data/2.5/weather';
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
      '$openWeatherMapUrl?q=$cityName&appid=$apiKey&units=netric',
    );
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
      '$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=netric',
    );

    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
