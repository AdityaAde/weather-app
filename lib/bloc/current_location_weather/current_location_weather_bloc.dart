import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/current_location_weather_models.dart';
import '../../repositories/current_location_weather/current_location_repository.dart';

part 'current_location_weather_event.dart';
part 'current_location_weather_state.dart';

class CurrentLocationWeatherBloc extends Bloc<CurrentLocationWeatherEvent, CurrentLocationWeatherState> {
  CurrentLocationWeatherRepository currentLocationWeatherRepository = CurrentLocationWeatherRepository();
  CurrentLocationWeatherBloc() : super(CurrentLocationWeatherLoading()) {
    on<GetCurrentLocationWeatherEvent>(_onGetCurrentLocationWeather);
  }

  void _onGetCurrentLocationWeather(
    GetCurrentLocationWeatherEvent event,
    Emitter<CurrentLocationWeatherState> emit,
  ) async {
    final data = await currentLocationWeatherRepository.getCurrentLocationWeather();
    if (data.cod == 200) {
      emit(CurrentLocationWeatherLoaded(currentLocationWeather: data));
    } else {
      emit(const CurrentLocationWeatherError(error: 'Get data current location weather error'));
    }
  }
}
