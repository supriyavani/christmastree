import 'package:christmastree/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[300],
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateX(0.01 * _offset.dy)
          ..rotateY(-0.01 * _offset.dx),
        child: GestureDetector(
          onPanUpdate: (details) {
            _offset += details.delta;
            setState(() {});
          },
          onDoubleTap: () {
            _offset = Offset.zero;
            setState(() {
              
            });
          },
          child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: 155,
                    child: Icon(
          Icons.star,
          color: Colors.white,
          size: 60,
                    )),
                Positioned(
                    top: 520,
                    height: 150,
                    width: 90,
                    child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                  colors: [Colorss.yellow1, Colorss.yellow2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
                    )),
                Positioned(
                  top: 300,
                  child: CustomPaint(
                    painter: Triangle(),
                    size: Size.square(250),
                    foregroundPainter: BannerPainter(
            message: "Merry Christmas",
            textDirection: TextDirection.ltr,
            location: BannerLocation.bottomEnd,
            layoutDirection: TextDirection.ltr,
            color: Colors.red),
                  ),
                ),
                Positioned(
                  top: 250,
                  child: CustomPaint(
                    painter: Triangle(),
                    size: Size.square(200),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: CustomPaint(
                    painter: Triangle(),
                    size: Size.square(150),
                  ),
                ),
                Positioned(
                    top: 520,
                    left: 110,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
                Positioned(
                    top: 520,
                    right: 120,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
                Positioned(
                    top: 480,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
                Positioned(
                    top: 430,
                    left: 140,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
                Positioned(
                    top: 430,
                    right: 140,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
                Positioned(
                    top: 390,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
                Positioned(
                    top: 350,
                    left: 160,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
                Positioned(
                    top: 350,
                    right: 160,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
                Positioned(
                    top: 270,
                    child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
                    )),
              ],
            ),
        ),
      ),
    );
  }
}

class Triangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();
    var paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill
      ..shader = LinearGradient(
              colors: [Colorss.green1, Colorss.green2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)
          .createShader(Rect.fromLTRB(0, 0, size.width, size.height));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
