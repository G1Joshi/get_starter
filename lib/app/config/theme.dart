import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colours.black,
      secondary: Colours.white,
    ),
  );
}
