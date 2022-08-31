import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather_forecast_models/weather_forecast_models.dart';

part 'weather_forecast_state.dart';
part 'weather_forecast_cubit.freezed.dart';

class WeatherForecastCubit extends Cubit<WeatherForecastState> {
  WeatherForecastCubit() : super(const WeatherForecastState.loading());

  void getCurrenLocationtWeatherForecast(String lat, String lon) {
    emit(const WeatherForecastState.loading());
  }
}
