import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData dark = ThemeData(
    primaryColor: Colors.white, // Color principal blanco
    primaryColorLight: Colors.white, // Color principal claro blanco
    hintColor: Colors.white, // Color secundario blanco
    buttonTheme: const ButtonThemeData(
      // Configuración de los botones
      buttonColor: Colors.white, // Botones blancos
      textTheme: ButtonTextTheme.primary, // Texto de los botones blancos
    ),
    textTheme: const TextTheme(
      // Configuración del texto
      bodyText1: TextStyle(color: Colors.white), // Texto del cuerpo blanco
      bodyText2: TextStyle(color: Colors.white), // Texto del cuerpo blanco
    ),
  );
}
