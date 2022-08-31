import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather_forecast_models/weather_forecast_models.dart';

import '../../component/static_data.dart';
import '../../data/remote/weather_forecast_current_location.dart';
import '../../repositories/repositories.dart';

part 'weather_forecast_state.dart';
part 'weather_forecast_cubit.freezed.dart';

class WeatherForecastCubit extends Cubit<WeatherForecastState> {
  CurrentLocationRepository locationService = CurrentLocationRepository();

  WeatherForecastCubit() : super(const WeatherForecastState.loading());

  Future<void> getCurrenLocationtWeatherForecast() async {
    emit(const WeatherForecastState.loading());
    await locationService.getCurrentLocation();
    final weatherForecastService = WeatherForecastCurrentLocationService.create();
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
}
