import 'package:flutter/material.dart';

// class Space {
//   const Space._();
//   static SizedBox horizontal(double width) => SizedBox(width: width);
//   static SizedBox vertical(double height) => SizedBox(height: height);
// }

class SpaceH extends StatelessWidget {
  const SpaceH(this.height, {super.key});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class SpaceW extends StatelessWidget {
  const SpaceW(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
