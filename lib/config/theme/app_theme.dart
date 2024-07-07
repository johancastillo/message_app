import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorsTheme = [
  _customColor,
  Colors.black,
  Colors.amber,
  Colors.teal,
  Colors.purpleAccent,
  Colors.limeAccent,
  Colors.grey
]; 

class AppTheme {
  
  final int selectedColor = 2;

  AppTheme({
    required selectedColor
  }): assert(selectedColor >= 0 && selectedColor <= _colorsTheme.length, "Numero de color no valido.");

  ThemeData theme(){
    return ThemeData(
      colorSchemeSeed: _colorsTheme[selectedColor],
      // Dark Theme
      //brightness: Brightness.dark
    );
  }


}
