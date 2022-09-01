import 'package:get_it/get_it.dart';
import 'repositories/repositories.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(CurrentLocationRepository());
  locator.registerSingleton(CurrentLocationWeatherRepository());
  locator.registerSingleton(CityWeatherRepository());
}
