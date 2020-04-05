import 'package:flutter/material.dart';

class CurvedShape extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(30, 10));
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}






// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:monthlykharcha/components/constant.dart';


// class CurvedShape extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: CURVE_HEIGHT,
//       child: CustomPaint(
//         painter: _MyPainter(),
//       ),
//     );
//   }
// }

// class _MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = new Paint()
//       ..style = PaintingStyle.fill
//       ..isAntiAlias = true
//       ..color = Colors.orange[300];

//     Offset circleCenter = Offset(size.width / 2, size.height - AVATAR_RADIUS);

//     Offset topLeft = Offset(0, 0);
//     Offset bottomLeft = Offset(0, size.height * 0.45);
//     Offset topRight = Offset(size.width, 0);
//     Offset bottomRight = Offset(size.width, size.height * 0.5);

//     Offset leftCurveControlPoint = Offset(circleCenter.dx * 0.5, size.height - AVATAR_RADIUS * 1.5);
//     Offset rightCurveControlPoint = Offset(circleCenter.dx * 1.0, size.height - AVATAR_RADIUS);

//     final arcStartAngle = 200 / 180 * pi;
//     final avatarLeftPointX = circleCenter.dx + AVATAR_RADIUS * cos(arcStartAngle);
//     final avatarLeftPointY = circleCenter.dy + AVATAR_RADIUS * sin(arcStartAngle);
//     Offset avatarLeftPoint = Offset(avatarLeftPointX, avatarLeftPointY); // the left point of the arc

//     final arcEndAngle = -8/ 240 * pi;
//     final avatarRightPointX = circleCenter.dx + AVATAR_RADIUS * cos(arcEndAngle);
//     final avatarRightPointY = circleCenter.dy + AVATAR_RADIUS * sin(arcEndAngle);
//     Offset avatarRightPoint = Offset(avatarRightPointX, avatarRightPointY); // the right point of the arc

//     Path path = Path()
//       ..moveTo(topLeft.dx, topRight.dy) // this move isn't required since the start point is (0,0)
//       ..lineTo(bottomLeft.dx, bottomRight.dy)
//       ..quadraticBezierTo(leftCurveControlPoint.dx, leftCurveControlPoint.dy, avatarLeftPoint.dx, avatarLeftPoint.dy)
//       ..arcToPoint(avatarRightPoint, radius: Radius.circular(AVATAR_RADIUS))
//       ..quadraticBezierTo(rightCurveControlPoint.dx, rightCurveControlPoint.dy, bottomRight.dx, bottomRight.dy)
//       ..lineTo(topRight.dx, topRight.dy)
//       ..close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }