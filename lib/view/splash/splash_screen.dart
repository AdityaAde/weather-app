import 'package:flutter/material.dart';
import 'package:weather_app/components/background_image.dart';
import 'package:weather_app/view/home/home_screen.dart';

import '../../models/weather_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const SplashScreen(),
    );
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(locationWeather: weatherData),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CanvasBackgroundImage(
        widget: Center(
          child: SizedBox(
            height: 300,
            width: 200,
            child: Image.asset('assets/images/splash-image.png'),
          ),
        ),
      ),
    );
  }
}
