import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';

class TSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight =
      EdgeInsetsGeometry.only(
        top: TSizes.appBarHeight,
        bottom: TSizes.defaultSpace,
        right: TSizes.defaultSpace,
        left: TSizes.defaultSpace,
      );
}
