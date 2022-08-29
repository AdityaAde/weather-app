import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/current_location_weather/current_location_weather_bloc.dart';

import '../../../models/current_location_weather_models.dart';
import '../../pages.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key? key,
    this.locationWeather,
    required this.cityName,
    required this.temperature,
    required this.description,
  }) : super(key: key);

  final CurrentLocationWeatherModels? locationWeather;
  final String cityName;
  final int temperature;
  final String description;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  /* late int temperature;
  late String weatherIcon;
  late String cityName;
  late String description;

  @override
  void initState() {
    super.initState();
    updateUi(widget.locationWeather!);
  }

  void updateUi(CurrentLocationWeatherModels weatherData) {
    setState(() {
      if (weatherData.cod == 404) {
        temperature = 0;
        weatherIcon = 'error';
        cityName = 'Kota Tidak Ditemukan';
        description = '';
      }
      double temp = weatherData.main!.temp!;
      temperature = temp.toInt();
      cityName = weatherData.name!;
      description = weatherData.weather![0].description!;
    });
  } */

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: mediaQuery.size.height * 0.2),
              child: Column(
                children: [
                  Text(
                    widget.cityName,
                    style: textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (widget.temperature.toString().length < 2)
                            ? '${widget.temperature}'
                            : '${widget.temperature}'.substring(0, 2),
                        style: textTheme.headline2!.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(width: 3),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          '\u2103',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Text(widget.description,
                      style: textTheme.headline4!.copyWith(color: colorScheme.primary.withOpacity(0.5))),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/house.png'),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 25, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /// Mendapatkan Lokasi Saat Ini
                CircleAvatar(
                  radius: 30,
                  backgroundColor: colorScheme.primaryContainer,
                  child: InkWell(
                    onTap: () async {
                      context.read<CurrentLocationWeatherBloc>().add(GetCurrentLocationWeatherEvent());
                      //var weatherData = widget.locationWeather;
                      //updateUi(weatherData!);
                    },
                    child: Center(
                      child: Image.asset('assets/images/location.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 5),

                /// Navigasi ke halaman SEARCH untuk mendapatkan lokasi kota
                CircleAvatar(
                  radius: 30,
                  backgroundColor: colorScheme.primaryContainer,
                  child: InkWell(
                    onTap: () async {
                      var typedName = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SearchCityScreen();
                          },
                        ),
                      );
                      if (typedName != null) {
                        //updateUi(widget.locationWeather!);
                      }
                    },
                    child: Icon(
                      Icons.near_me,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
