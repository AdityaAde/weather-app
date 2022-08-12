import 'package:flutter/material.dart';
import 'package:weather_app/components/background_image.dart';
import 'package:weather_app/components/field_decoration.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String cityName;
  @override
  Widget build(BuildContext context) {
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
            ElevatedButton(
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
                )),
          ],
        ),
      ),
    );
  }
}
