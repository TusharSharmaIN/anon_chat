import 'package:anon_chat/presentation/theme/base_colors.dart';
import 'package:flutter/material.dart';

final appThemeData = ThemeData(
  scaffoldBackgroundColor: BaseColors.black,
  primaryColor: BaseColors.primaryColor,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: BaseColors.black),
    foregroundColor: BaseColors.transparent,
    backgroundColor: BaseColors.transparent,
    surfaceTintColor: BaseColors.transparent,
    elevation: 0.0,
    centerTitle: false,
  ),
  elevatedButtonTheme: _elevatedButtonTheme(),
  outlinedButtonTheme: _outlinedButtonTheme(),
  textSelectionTheme: _textSelectionThemeData(),
  tabBarTheme: const TabBarThemeData(
    indicatorColor: BaseColors.primaryColor,
    labelColor: BaseColors.primaryColor,
    indicatorSize: TabBarIndicatorSize.tab,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: BaseColors.primaryColor,
  ),
);

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 24),
      backgroundColor: BaseColors.primaryGreen,
      foregroundColor: BaseColors.black,
      elevation: 4,
      shadowColor: BaseColors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  );
}

OutlinedButtonThemeData _outlinedButtonTheme() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 24),
      foregroundColor: BaseColors.black,
      backgroundColor: BaseColors.transparent,
      side: const BorderSide(color: BaseColors.primaryGreen, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  );
}

TextSelectionThemeData _textSelectionThemeData() {
  return const TextSelectionThemeData(
    cursorColor: BaseColors.primaryColor,
    selectionHandleColor: BaseColors.primaryColor,
  );
}
