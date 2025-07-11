import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: TColors.darkGrey.withAlpha((255 * 0.1).toInt()),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)); // BoxShadow

  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkGrey.withAlpha((255 * 0.1).toInt()),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
