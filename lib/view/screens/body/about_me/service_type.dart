import 'dart:math' as math;

import 'package:flutter/material.dart';

class ServiceType extends StatefulWidget {
  const ServiceType({super.key});

  @override
  State<ServiceType> createState() => _ServiceTypeState();
}

class _ServiceTypeState extends State<ServiceType> with TickerProviderStateMixin {
  // late AnimationController _outerController;
  // late AnimationController _middleController;
  // late AnimationController _innerController;

  @override
  void initState() {
    super.initState();
    // _outerController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(seconds: 10),
    // )..repeat();
    // _middleController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(seconds: 10),
    // )..repeat();
    // _innerController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(seconds: 10),
    // )..repeat();
    //
    // // Reverse the direction of the middle controller to spin in the opposite direction
    // _middleController.addListener(() {
    //   if (_middleController.status == AnimationStatus.completed) {
    //     _middleController.reverse();
    //   } else if (_middleController.status == AnimationStatus.dismissed) {
    //     _middleController.forward();
    //   }
    // });
  }

  @override
  void dispose() {
    // _outerController.dispose();
    // _middleController.dispose();
    // _innerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Outer Ring
              buildAnimatedRing(
                // controller: _outerController,
                strokeWidth: 40,
                colors: [Color(0xff103A60), Color(0xff2695C8), Color(0xff113D7F)],
                borderColors: [Color(0xff2695C8), Color(0xff50D7DF), Color(0xff0373C2)],
                borderWidth: 2,
                size: 400,
                texts: ['Mobile Play', 'PC Gaming', 'Console Zone'],
              ),
              // Middle Ring
              buildAnimatedRing(
                // controller: _middleController,
                strokeWidth: 40,
                colors: [Color(0xff103A60), Color(0xff2695C8), Color(0xff113D7F)],
                borderColors: [Color(0xff2695C8), Color(0xff50D7DF), Color(0xff0373C2)],
                borderWidth: 2,
                size: 280,
                texts: ['Web Play', 'Cloud Arena', 'VR Worlds'],
              ),
              // Inner Ring
              buildAnimatedRing(
                // controller: _innerController,
                strokeWidth: 40,
                colors: [
                  Color(0xff103A60),
                  Color(0xff2695C8),
                ],
                borderColors: [Color(0xff2695C8), Color(0xff50D7DF)],
                borderWidth: 2,
                size: 150,
                texts: ['TV Mode', 'Portable Play'],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildAnimatedRing(
      {
      // AnimationController? controller,
      double? strokeWidth,
      List<Color>? colors,
      double? size,
      final List<String>? texts,
      final double? borderWidth,
      final List<Color>? borderColors}) {
    // return CustomPaint(
    //   painter: CircularChartPainter(strokeWidth: strokeWidth, colors: colors, texts: texts),
    //   size: Size(size, size),
    // );
    return CustomPaint(
      painter: CircularChartPainter(
          strokeWidth: strokeWidth!,
          colors: colors!,
          texts: texts!,
          borderColors: borderColors!,
          borderWidth: borderWidth!),
      size: Size(size!, size),
    );
    // return AnimatedBuilder(
    //   animation: controller!,
    //   builder: (_, child) {
    //     return Transform.rotate(
    //       angle: controller.value * 2 * math.pi * (controller == _middleController ? -1 : 1),
    //       child: child,
    //     );
    //   },
    //   child: CustomPaint(
    //     painter: CircularChartPainter(
    //         strokeWidth: strokeWidth!,
    //         colors: colors!,
    //         texts: texts!,
    //         borderColors: borderColors!,
    //         borderWidth: borderWidth!),
    //     size: Size(size!, size),
    //   ),
    // );
  }
}

class CircularChartPainter extends CustomPainter {
  final double strokeWidth;
  final List<Color> colors; // Colors for each segment
  final List<Color> borderColors; // Border colors for each segment
  final List<String> texts; // Text for each segment
  final double borderWidth; // Width of the border

  CircularChartPainter({
    required this.strokeWidth,
    required this.colors,
    required this.borderColors,
    required this.texts,
    this.borderWidth = 2.0, // Default border width
  }) : assert(colors.length == borderColors.length,
            'Colors and borderColors lists must have the same length.');

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.stroke;

    final center = size.center(Offset.zero);
    final segmentSweepAngle = (2 * math.pi) / colors.length;
    double startAngle = -math.pi / 2;

    // Adjusted radius for main segment, accounting for border
    final adjustedRadius = size.width / 2 - strokeWidth / 2 - borderWidth;

    for (int i = 0; i < colors.length; i++) {
      // Draw the border for each segment
      paint
        ..color = borderColors[i]
        ..strokeWidth = strokeWidth + borderWidth * 2; // Adding border width on both sides
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: adjustedRadius + borderWidth / 2),
        startAngle,
        segmentSweepAngle,
        false,
        paint,
      );

      // Draw the segment arc
      paint
        ..color = colors[i]
        ..strokeWidth = strokeWidth;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: adjustedRadius),
        startAngle,
        segmentSweepAngle,
        false,
        paint,
      );

      // Text drawing logic, considering the adjusted radius for text positioning
      final String segmentText = texts[i];
      for (int j = 0; j < segmentText.length; j++) {
        final String character = segmentText[j];
        final textStyle = TextStyle(color: Colors.white, fontSize: 14);
        final textSpan = TextSpan(text: character, style: textStyle);
        final textPainter = TextPainter(
            text: textSpan, textAlign: TextAlign.center, textDirection: TextDirection.ltr);
        textPainter.layout();

        final characterAngle = startAngle +
            segmentSweepAngle / 2 -
            (segmentText.length * 9 / adjustedRadius / 2) +
            j * 9 / adjustedRadius;
        final textX = center.dx + adjustedRadius * math.cos(characterAngle);
        final textY = center.dy + adjustedRadius * math.sin(characterAngle);

        canvas.save();
        canvas.translate(textX, textY);
        canvas.rotate(characterAngle + math.pi / 2);
        textPainter.paint(canvas, Offset(-textPainter.width / 2, -textPainter.height / 2));
        canvas.restore();
      }

      startAngle += segmentSweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
