import 'package:flutter/material.dart';
import 'package:gamezi/utils/images.dart';

class Image3X extends StatelessWidget {
  const Image3X({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      MyImages.fast3X,
      height: 400,
      fit: BoxFit.contain,
    );
  }
}
