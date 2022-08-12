import 'package:flutter/material.dart';

import '../../components/components.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String cityName;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: CanvasBackgroundImage(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: kTextFieldInputDecoration,
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ),
            _getWeatherButton(colorScheme, context, cityName),
          ],
        ),
      ),
    );
  }

  ElevatedButton _getWeatherButton(ColorScheme colorScheme, BuildContext context, String cityName) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: colorScheme.primaryContainer,
          fixedSize: const Size(160, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: () {
        Navigator.pop(context, cityName);
      },
      child: Text(
        'Dapatkan Cuaca',
        style: TextStyle(color: colorScheme.primary),
      ),
    );
  }
}
