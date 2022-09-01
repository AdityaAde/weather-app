// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../bloc/bloc.dart';
import '../../pages.dart';
import 'weather_forecast_card.dart';

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                alignment: Alignment.center,
                width: double.infinity,
                height: 250.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Perkiraan Cuaca 5 Hari', style: textTheme.bodyText2!.copyWith(fontSize: 15)),
                    ),
                    // Data perkiraan cuaca selama 5 hari
                    _dataWeatherForecast(textTheme),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset('assets/images/back.png'),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset('assets/images/front.png'),
        ),

        // Fungsi untuk memanggil lokasi saat ini
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25, left: 40),
            child: InkWell(
              onTap: () async {
                context.read<CurrentLocationWeatherBloc>().add(GetCurrentLocationWeatherEvent());
                context.read<WeatherForecastCubit>().getCurrenLocationtWeatherForecast();
              },
              child: Image.asset('assets/images/location.png'),
            ),
          ),
        ),

        /// Navigasi ke halaman SEARCH untuk mendapatkan lokasi kota
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25, right: 40),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SearchCityScreen();
                    },
                  ),
                );
              },
              child: Icon(
                Icons.near_me,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _dataWeatherForecast(TextTheme textTheme) {
    return BlocBuilder<WeatherForecastCubit, WeatherForecastState>(
      builder: (context, state) {
        return state.when(loading: () {
          return const Center(child: Text('Sedang memuat data...'));
        }, loaded: ((dataWeatherForecast) {
          /// =====================================================================
          /// Data perkiraan cuaca dalam 5 Hari
          final dateTime1 = DateTime.tryParse(dataWeatherForecast.list[0].dtTxt);
          String formattedDate1 = DateFormat('dd-MM-yyyy').format(dateTime1!);
          final dateTime2 = DateTime.tryParse(dataWeatherForecast.list[6].dtTxt);
          String formattedDate2 = DateFormat('dd-MM-yyyy').format(dateTime2!);
          final dateTime3 = DateTime.tryParse(dataWeatherForecast.list[14].dtTxt);
          String formattedDate3 = DateFormat('dd-MM-yyyy').format(dateTime3!);
          final dateTime4 = DateTime.tryParse(dataWeatherForecast.list[22].dtTxt);
          String formattedDate4 = DateFormat('dd-MM-yyyy').format(dateTime4!);
          final dateTime5 = DateTime.tryParse(dataWeatherForecast.list[30].dtTxt);
          String formattedDate5 = DateFormat('dd-MM-yyyy').format(dateTime5!);

          /// =====================================================================
          return Row(
            children: [
              Expanded(
                child: WeatherForecastCard(
                  formattedDate: formattedDate1,
                  description: dataWeatherForecast.list[0].weather[0].description,
                  temperature: dataWeatherForecast.list[0].main.temp.toString(),
                ),
              ),
              Expanded(
                child: WeatherForecastCard(
                  formattedDate: formattedDate2,
                  description: dataWeatherForecast.list[6].weather[0].description,
                  temperature: dataWeatherForecast.list[6].main.temp.toString(),
                ),
              ),
              Expanded(
                child: WeatherForecastCard(
                  formattedDate: formattedDate3,
                  description: dataWeatherForecast.list[14].weather[0].description,
                  temperature: dataWeatherForecast.list[14].main.temp.toString(),
                ),
              ),
              Expanded(
                child: WeatherForecastCard(
                  formattedDate: formattedDate4,
                  description: dataWeatherForecast.list[22].weather[0].description,
                  temperature: dataWeatherForecast.list[22].main.temp.toString(),
                ),
              ),
              Expanded(
                child: WeatherForecastCard(
                  formattedDate: formattedDate5,
                  description: dataWeatherForecast.list[30].weather[0].description,
                  temperature: dataWeatherForecast.list[30].main.temp.toString(),
                ),
              ),
            ],
          );
        }), error: ((error) {
          return Center(
            child: Text(error),
          );
        }));
      },
    );
  }
}
