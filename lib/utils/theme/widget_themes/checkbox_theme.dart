import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCheckboxTheme {
  TCheckboxTheme._(); //To avoid creating instances

  static final lightCheckboxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.all(TColors.secondary),
  );

  static final darkCheckboxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.all(TColors.primary),
  );
}
