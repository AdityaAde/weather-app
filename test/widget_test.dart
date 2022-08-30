import 'package:http/http.dart' as http;
import 'package:weather_app/repositories/city_weather/city_weather_repository.dart';
import 'package:weather_app/repositories/current_location_weather/current_location_weather.dart';

void main() async {
  CityWeatherRepository cityWeatherRepository = CityWeatherRepository();
  await cityWeatherRepository.getCityWeather('Jatibening');

  CurrentLocationWeatherRepository currentLocationWeatherRepository = CurrentLocationWeatherRepository();
  await currentLocationWeatherRepository.getCurrentLocationWeather();

  /* final response = await getWeatherForecast();
  final result = jsonDecode(response.body); */

  /// Hasil data ramalan cuaca selama 6 hari
  /* print(result["list"][0]["dt_txt"]);
  print(result["list"][6]["dt_txt"]);
  print(result["list"][14]["dt_txt"]);
  print(result["list"][22]["dt_txt"]);
  print(result["list"][30]["dt_txt"]);
  print(result["list"][38]["dt_txt"]); */
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
