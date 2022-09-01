import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'bloc/bloc.dart';
import 'component/config.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherForecastCubit>(create: (_) => WeatherForecastCubit()..getCurrenLocationtWeatherForecast()),
        BlocProvider<CurrentLocationWeatherBloc>(
          create: (context) => CurrentLocationWeatherBloc()..add(GetCurrentLocationWeatherEvent()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: '/',
      ),
    );
  }
}
