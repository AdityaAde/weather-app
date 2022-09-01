import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/remote/weahter_forecast_search_city/weather_forecast_search_city.dart';
import 'package:weather_app/injector.dart';
import 'package:weather_app/models/weather_forecast_models/weather_forecast_models.dart';

import '../../component/static_data.dart';
import '../../data/remote/weather_forecast_current_location/weather_forecast_current_location.dart';
import '../../repositories/repositories.dart';

part 'weather_forecast_state.dart';
part 'weather_forecast_cubit.freezed.dart';

class WeatherForecastCubit extends Cubit<WeatherForecastState> {
  WeatherForecastCubit() : super(const WeatherForecastState.loading());

  /// Trigger function untuk mendapatkan perkiraan cuaca pada lokasi USER saat ini
  Future<void> getCurrenLocationtWeatherForecast() async {
    final weatherForecastService = WeatherForecastCurrentLocationService.create();
    final locationService = locator<CurrentLocationRepository>();
    emit(const WeatherForecastState.loading());
    await locationService.getCurrentLocation();
    final responseWeatherForecast = await weatherForecastService.getWeatherForecastCurrentLocation(
      locationService.latitude.toString(),
      locationService.longitude.toString(),
      StaticData.apiKey,
    );
    try {
      if (responseWeatherForecast.isSuccessful) {
        emit(WeatherForecastState.loaded(WeatherForecastModels.fromJson(responseWeatherForecast.body)));
      }
    } catch (e) {
      emit(WeatherForecastState.error(e.toString()));
    }
  }

  /// Trigger function untuk mendapatkan perkiraan cuaca pada kota yang di input USER
  Future<void> getSearchCityWeatherForecast(String city) async {
    final weatherForecastService = WeatherForecastSearchCityService.create();
    emit(const WeatherForecastState.loading());

    final responseWeatherForecast = await weatherForecastService.getWeatherForecastSearchCity(
      city,
      StaticData.apiKey,
    );
    try {
      if (responseWeatherForecast.isSuccessful) {
        emit(WeatherForecastState.loaded(WeatherForecastModels.fromJson(responseWeatherForecast.body)));
      }
    } catch (e) {
      emit(WeatherForecastState.error(e.toString()));
    }
  }
}
