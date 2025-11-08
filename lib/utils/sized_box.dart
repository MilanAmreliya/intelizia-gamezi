import 'package:flutter/material.dart';

extension AddSpace on num {
  Widget addHeight() {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget addWidth() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
