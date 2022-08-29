part of 'current_location_weather_bloc.dart';

abstract class CurrentLocationWeatherEvent extends Equatable {
  const CurrentLocationWeatherEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentLocationWeatherEvent extends CurrentLocationWeatherEvent {}

class GetWeatherSearchCityEvent extends CurrentLocationWeatherEvent {
  final String cityName;

  const GetWeatherSearchCityEvent({required this.cityName});

  @override
  List<Object> get props => [cityName];
}
