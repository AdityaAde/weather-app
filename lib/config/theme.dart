import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    textTheme: _textTheme(),
    colorScheme: _colorScheme(),
  );
}

TextTheme _textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 36,
    ),
    headline2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    headline3: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    headline4: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headline5: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    headline6: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    bodyText1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      height: 1.75,
      fontSize: 12,
    ),
    bodyText2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 10,
    ),
  );
}

ColorScheme _colorScheme() {
  return const ColorScheme(
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xffebebf5),
    primaryContainer: Color(0xff1f1d47),
    secondaryContainer: Colors.black,
    tertiaryContainer: Color(0x89f6ea63),
    onTertiaryContainer: Color(0xff854503),
    background: Color(0xf2f8f8f8),
    surface: Colors.red,
    onPrimary: Color(0xff672CBC),
    onSecondary: Colors.black,
    brightness: Brightness.light,
    onBackground: Colors.black,
    error: Colors.red,
    onError: Colors.red,
    onSurface: Colors.purple,
  );
}
