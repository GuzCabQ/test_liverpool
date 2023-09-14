import 'package:flutter/material.dart';
import 'package:test_liverpool/config/theme/theme.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: ColorsApp.primaryColor,
        primaryColorLight: ColorsApp.primaryColor,
        primaryColor: ColorsApp.primaryColor,
        appBarTheme: const AppBarTheme(backgroundColor: ColorsApp.primaryColor),
      );
}
