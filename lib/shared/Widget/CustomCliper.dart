import 'package:flutter/cupertino.dart';

class CustomCliper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.8453333);
    path0.quadraticBezierTo(size.width * 0.2348601, size.height * 0.7893333,
        size.width * 0.4610687, size.height * 0.8773333);
    path0.quadraticBezierTo(size.width * 0.6782443, size.height * 0.9786667,
        size.width, size.height * 0.8746667);
    path0.lineTo(size.width, 0);
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
