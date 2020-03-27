import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final Color paintColor = Colors.black;
  @override
  void paint(Canvas canvas, Size size) {
    /// the thing that I called as a deleter circle is an imaginary circle that I used to delete a semicircle from my rectangular shape

    var diameter = 100; /// X value is the diameter(R) of the deleter circle;
    double topSpace = 2;
    double startCurve = (size.width-diameter)/2; /// Start point of the curve
    double endCurve = startCurve+diameter; // End Point of the curve


     /// Some math about my cubic bezier curve
    double xValueInset = diameter * 0.05; 
    double yValueOffset = (diameter/2) * 4.0 / 3.0; 

    Path path = Path();

    Paint paint = Paint();

    /// Points to make a semicircle approximation using Bezier Curve
    var firstendPoint = new Offset(endCurve, topSpace);
    var controlPoint1  = new Offset(startCurve+xValueInset,yValueOffset+topSpace);
    var controlPoint2  = new Offset((diameter-xValueInset)+startCurve,yValueOffset+topSpace);

    //! Start sketching Shape
    path.moveTo(0.0,topSpace);
    path.lineTo(startCurve, topSpace);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy,
    controlPoint2.dx, controlPoint2.dy,
    firstendPoint.dx, firstendPoint.dy);
    path.lineTo(size.width, topSpace);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    //! End sketching Shape

    paint.color = paintColor;

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) =>  oldDelegate != this;
}