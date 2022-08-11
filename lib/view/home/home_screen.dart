import 'package:flutter/material.dart';
import 'widgets/home_body.dart';
import '../../components/components.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: CanvasBackgroundImage(
          widget: HomeBody(locationWeather: locationWeather),
        ),
      ),
    );
  }
}
