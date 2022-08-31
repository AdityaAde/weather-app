import 'package:flutter/material.dart';

import '../../../widgets/text_celcius.dart';

class WeatherForecastCard extends StatelessWidget {
  const WeatherForecastCard({
    Key? key,
    required this.formattedDate,
    required this.description,
    required this.temperature,
  }) : super(key: key);

  final String formattedDate;
  final String description;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF48319D).withOpacity(0.7),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            height: 105,
            width: 63,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    formattedDate,
                    style: textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                  CelciusText(text: temperature, sizeCelcius: 8)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
