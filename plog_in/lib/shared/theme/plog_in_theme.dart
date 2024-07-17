import 'package:flutter/material.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';

final ThemeData PlogInTheme = ThemeData(
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  textSelectionTheme: TextSelectionThemeData(
      cursorColor: PlogInColors.lightGreen,
      selectionColor: PlogInColors.lightGreen.withOpacity(0.2),
      selectionHandleColor: PlogInColors.lightGreen),
  colorScheme: ColorScheme.light(background: PlogInColors.white)
);
