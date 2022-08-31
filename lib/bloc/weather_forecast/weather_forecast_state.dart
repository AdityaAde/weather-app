part of 'weather_forecast_cubit.dart';

@freezed
class WeatherForecastState with _$WeatherForecastState {
  const factory WeatherForecastState.loading() = _Loading;
  const factory WeatherForecastState.loaded(WeatherForecastModels dataWeatherForecast) = _Loaded;
  const factory WeatherForecastState.error(String error) = _Error;
}
