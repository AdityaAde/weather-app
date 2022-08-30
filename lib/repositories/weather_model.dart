import 'package:geolocator/geolocator.dart';
import 'package:weather_app/repositories/current_location/current_location_repository.dart';

import '../component/static_data.dart';
import '../helper/network.dart';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
      '${StaticData.weatherUrl}?q=$cityName&appid=${StaticData.apiKey}&units=netric',
    );

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    CurrentLocationRepository location = CurrentLocationRepository();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
      '${StaticData.weatherUrl}?lat=${location.latitude}&lon=${location.longitude}&appid=${StaticData.apiKey}&units=netric',
    );

    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
