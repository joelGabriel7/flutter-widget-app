import 'package:flutter/material.dart';

const colorList = <Color>[
  
 Colors.red,
 Colors.blue,
 Colors.pink,
 Colors.purple,
 ];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Color must be greather then 0'),
       assert(selectedColor < colorList.length, 'The color must be less o equal a ${colorList.length - 1 }');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true
        )
      );
}




