import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_forecast_models/weather_forecast_models.dart';

void main() async {
  /// Mendapatkan hasil cuaca dari lokasi terkini dan pencarian kota
  /// ==================================================================================================
  /* CityWeatherRepository cityWeatherRepository = CityWeatherRepository();
  await cityWeatherRepository.getCityWeather('Jatibening');

  CurrentLocationWeatherRepository currentLocationWeatherRepository = CurrentLocationWeatherRepository();
  await currentLocationWeatherRepository.getCurrentLocationWeather(); */
  /// ==================================================================================================

  /// Mendapatkan hasil response dari perkiraan cuaca pada lokasi saat ini

  /// ==================================================================================================
  /* final response = await getWeatherForecastWithModels();
  print(response.list[0].dtTxt);
  print(response.list[0].main.temp);
  print(response.list[0].weather[0].description); */
  /// ==================================================================================================

  /// Hasil data ramalan cuaca selama 6 hari
  /// ==================================================================================================
  /* print(result["list"][0]["dt_txt"]);
  print(result["list"][6]["dt_txt"]);
  print(result["list"][14]["dt_txt"]);
  print(result["list"][22]["dt_txt"]);
  print(result["list"][30]["dt_txt"]);
  print(result["list"][38]["dt_txt"]); */
  /// ==================================================================================================

  /// Mendapatkan hasil response dari perkiraan cuaca pada lokasi saat ini menggunakan chopper
  /// ==================================================================================================
  /* final forecastCurrentLocation = WeatherForecastCurrentLocationService.create();
  final response = await forecastCurrentLocation.getWeatherForecastCurrentLocation(
    35.toString(),
    139.toString(),
    StaticData.apiKey,
  );
  print(response.body); */
  /// ==================================================================================================
}

Future<http.Response> getWeatherForecast() async {
  const url = 'https://api.openweathermap.org/data/2.5/forecast?lat=35&lon=139&appid=5352e632cf9f09a11c469d39c87a2d83';
  try {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response;
    } else {
      return throw Exception('Gagal get API');
    }
  } catch (e) {
    return throw Exception(e);
  }
}

Future<WeatherForecastModels> getWeatherForecastWithModels() async {
  const url = 'https://api.openweathermap.org/data/2.5/forecast?lat=35&lon=139&appid=5352e632cf9f09a11c469d39c87a2d83';
  try {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      return WeatherForecastModels.fromJson(result);
    } else {
      return throw Exception('Gagal get API');
    }
  } catch (e) {
    return throw Exception(e);
  }
}
