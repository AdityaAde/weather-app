part of 'current_location_weather_bloc.dart';

abstract class CurrentLocationWeatherState extends Equatable {
  const CurrentLocationWeatherState();

  @override
  List<Object> get props => [];
}

class CurrentLocationWeatherLoading extends CurrentLocationWeatherState {}

class CurrentLocationWeatherLoaded extends CurrentLocationWeatherState {
  final CurrentLocationWeatherModels currentLocationWeather;

  const CurrentLocationWeatherLoaded({required this.currentLocationWeather});

  @override
  List<Object> get props => [currentLocationWeather];
}

class CurrentLocationWeatherError extends CurrentLocationWeatherState {
  final String error;

  const CurrentLocationWeatherError({required this.error});

  @override
  List<Object> get props => [error];
}
