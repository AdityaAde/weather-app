import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/bloc.dart';
import '../../pages.dart';

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

  Expanded _dataWeatherForecast(TextTheme textTheme) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
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
                    height: 100,
                    width: 65,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '30/08/2022',
                            style: textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text('clear sky', style: textTheme.bodyText2),
                          Text('29 Derajat', style: textTheme.bodyText2),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
