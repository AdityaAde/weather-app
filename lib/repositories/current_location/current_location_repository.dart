import 'package:geolocator/geolocator.dart';
import 'base_current_location_repository.dart';

class CurrentLocationRepository extends BaseCurrentLocationRepository {
  late double latitude;
  late double longitude;

  @override
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      throw Exception(e);
    }
  }
}
