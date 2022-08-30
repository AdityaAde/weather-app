import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/pages.dart';

import 'widgets/home_body.dart';
import '../../bloc/bloc.dart';
import '../../widgets/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, this.locationWeather}) : super(key: key);

  static const String routeName = '/home';
  final dynamic locationWeather;

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentLocationWeatherBloc, CurrentLocationWeatherState>(
      builder: (context, state) {
        if (state is CurrentLocationWeatherLoading) {
          return const LoadingScreen();
        } else if (state is CurrentLocationWeatherLoaded) {
          return Scaffold(
            body: SingleChildScrollView(
              child: CanvasBackgroundImage(
                widget: HomeBody(
                  cityName: state.currentLocationWeather.name!,
                  temperature: state.currentLocationWeather.main!.temp!.toInt(),
                  description: state.currentLocationWeather.weather![0].description!,
                ),
              ),
            ),
          );
        } else if (state is CurrentLocationWeatherError) {
          return const Scaffold(
            body: SingleChildScrollView(
              child: CanvasBackgroundImage(
                widget: HomeBody(
                  cityName: 'Kota tidak ditemukan',
                  temperature: 0,
                  description: '',
                ),
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
