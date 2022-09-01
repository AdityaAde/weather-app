import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../../models/current_location_weather_models/current_location_weather_models.dart';
import '../../repositories/repositories.dart';

part 'current_location_weather_event.dart';
part 'current_location_weather_state.dart';

class CurrentLocationWeatherBloc extends Bloc<CurrentLocationWeatherEvent, CurrentLocationWeatherState> {
  /// Fungsi untuk melakukan komunikasi pada API dan mendapatkan response nya
  final currentLocationWeatherRepository = locator<CurrentLocationWeatherRepository>();
  final cityWeatherRepository = locator<CityWeatherRepository>();

  CurrentLocationWeatherBloc() : super(CurrentLocationWeatherLoading()) {
    on<GetCurrentLocationWeatherEvent>(_onGetCurrentLocationWeather);
    on<GetWeatherSearchCityEvent>(_onGetWeatherSearchCityEvent);
  }

  /// Proses untuk mendapatkan nilai dari lokasi cuaca saat ini
  void _onGetCurrentLocationWeather(
    GetCurrentLocationWeatherEvent event,
    Emitter<CurrentLocationWeatherState> emit,
  ) async {
    final data = await currentLocationWeatherRepository.getCurrentLocationWeather();
    if (data != null) {
      emit(CurrentLocationWeatherLoaded(currentLocationWeather: data));
    } else {
      emit(const CurrentLocationWeatherError(error: 'Get data current location weather error'));
    }
  }

  /// Proses untuk mendapatkan nilai cuaca dari pencarian kota
  void _onGetWeatherSearchCityEvent(
    GetWeatherSearchCityEvent event,
    Emitter<CurrentLocationWeatherState> emit,
  ) async {
    emit(CurrentLocationWeatherLoading());
    final data = await cityWeatherRepository.getCityWeather(event.cityName);
    if (data != null) {
      emit(CurrentLocationWeatherLoaded(currentLocationWeather: data));
    } else {
      emit(const CurrentLocationWeatherError(error: 'Get data search city location weather error'));
    }
  }
}
