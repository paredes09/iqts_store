import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Container globalCircleIndicator() {
  return Container(
    color: Colors.black.withOpacity(0.1), //
    height: double.infinity,
    width: double.infinity,
    child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const SweepGradient(
            startAngle: 0.0,
            endAngle: 3.10 * 2,
            transform: GradientRotation(2.10 / 2),
            colors: <Color>[
              Colors.blueGrey,
              Colors.lightBlueAccent,
            ],
            stops: <double>[
              0.4,
              0.5,
            ],
          ).createShader(bounds);
        },
        child: const SpinKitRing(
          lineWidth: 3.5,
          color: Colors.white,
          size: 100.0,
        )),
  );
}
