import 'package:flutter/material.dart';
import '../ui/utils/color_helpers.dart';

/// Colors for the whole application
const goldenOrange = Color(0xFFE6AA68);
const brightRed    = Color(0xFFEB5160);
const darkBlue     = Color(0xFF19535F);
const bgGrey       = Color(0xFFE5E5E5);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: bgGrey,
  scaffoldBackgroundColor: bgGrey,
  primarySwatch: generateMaterialColor(darkBlue),
  appBarTheme: AppBarTheme(color: generateMaterialColor(darkBlue)),
  errorColor: brightRed,
);
