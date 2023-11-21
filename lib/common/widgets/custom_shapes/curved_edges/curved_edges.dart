import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // to create a custom shape
    // for this project
    // first corner curved
    // then straight line
    // and then corner curved

    // Here the (Size size) is the size of children of Clip where it is used
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurved = Offset(0, size.height - 20); // size.height is child height and -20 is deduct from bottom
    final lastCurved = Offset(30, size.height - 20);

    // x1, y1 is for the first curved
    // x2, y2 is for the second curved
    path.quadraticBezierTo(firstCurved.dx, firstCurved.dy, lastCurved.dx, lastCurved.dy);

    // second curved
    // Here second curved is straight line for this project
    final secondFirstCurved = Offset(0, size.height - 20);
    final secondLastCurved = Offset(size.width - 30, size.height - 20); // -30 is deducted from right
    path.quadraticBezierTo(secondFirstCurved.dx, secondFirstCurved.dy, secondLastCurved.dx, secondLastCurved.dy);

    final thirdFirstCurved = Offset(size.width, size.height - 20); // In simple, it is pointing to the end
    final thirdLastCurved = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurved.dx, thirdFirstCurved.dy, thirdLastCurved.dx, thirdLastCurved.dy);

    // Here x is the width of children of clip width
    // y is calculated form bottom
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
  
}