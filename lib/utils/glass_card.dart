import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gamezi/utils/colors.dart';

Widget glassEffectsCard({
  required Widget child,
  Color? color,
  double? borderRadius,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(borderRadius ?? 16),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? AppColors.lowPriority.withOpacity(0.5),
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          border: Border.all(color: Colors.white.withOpacity(0.2), width: .5),
        ),
        child: child,
      ),
    ),
  );
}
