import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    // first curve
    final firstPoint = Offset(0, size.height - 20);
    final secondPoint = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstPoint.dx,
      firstPoint.dy,
      secondPoint.dx,
      secondPoint.dy,
    );

    // draw straight line
    final thirdPoint = Offset(30, size.height - 20);
    final forthPoint = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      thirdPoint.dx,
      thirdPoint.dy,
      forthPoint.dx,
      forthPoint.dy,
    );

    // final curve
    final fifthPoint = Offset(size.width, size.height - 20);
    final sixthPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
      fifthPoint.dx,
      fifthPoint.dy,
      sixthPoint.dx,
      sixthPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(Object other) {
    return true;
  }
}

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
