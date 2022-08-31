import 'package:flutter/material.dart';
import '../../../models/current_location_weather_models/current_location_weather_models.dart';
import '../../../widgets/text_celcius.dart';
import 'weather_forecast.dart';

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
                      CelciusText(
                        text: widget.temperature.toString(),
                        sizeCelcius: 18,
                        style: textTheme.headline2!.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 35,
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

        // Weather forecast
        const WeatherForecast(),
      ],
    );
  }
}
