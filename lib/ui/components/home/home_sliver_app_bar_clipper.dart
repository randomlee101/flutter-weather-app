import 'package:flutter/material.dart';

class HomeSliverAppBarClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height - 20);
    path.lineTo(size.width / 6, size.height - 20);
    path.lineTo(size.width / 4, size.height - 20);
    var firstStart = Offset(size.width / 2.25, size.height - 20);
    var firstEnd = Offset(size.width / 2.15, size.height - 15);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width - (size.width / 2), size.height - 8);
    var secondEnd = Offset(size.width - (size.width / 2.15), size.height - 15);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    var thirdStart = Offset(size.width - (size.width / 2.25), size.height - 20);
    var thirdEnd = Offset(size.width - (size.width / 4), size.height - 20);
    path.quadraticBezierTo(
        thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy);
    path.lineTo(size.width - (size.width/6), size.height - 20);
    path.lineTo(size.width, size.height - 20);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
