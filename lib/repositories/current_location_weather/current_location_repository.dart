import 'package:geolocator/geolocator.dart';

import '../../config/static_data.dart';
import '../../models/current_location_weather_models.dart';
import '../../services/services.dart';
import 'base_current_location_repository.dart';

class CurrentLocationWeatherRepository extends BaseCurrentLocationWeatherRepository {
  @override
  Future<CurrentLocationWeatherModels> getCurrentLocationWeather() async {
    bool serviceEnabled;
    LocationPermission permission;

    //===================================================================
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
    //===================================================================

    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
      '${StaticData.weatherUrl}?lat=${location.latitude}&lon=${location.longitude}&appid=${StaticData.apiKey}&units=netric',
    );

    final weatherData = await networkHelper.getData();
    return CurrentLocationWeatherModels.fromJson(weatherData);
  }
}
