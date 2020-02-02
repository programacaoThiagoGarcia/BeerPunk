import 'package:flutter/material.dart';
class Gradients {
  static Gradient gradientsAppBar(){
    return new LinearGradient(
      colors: [
        const Color(0xFF78909C),
        const Color(0xFF263238)
      ],
      begin: const FractionalOffset(0.0, 0.0),
      end:  const FractionalOffset(1.0, 0.0),
      stops: [0.0,1.0],
      tileMode: TileMode.clamp
    );
  }
}