import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Kaam extends StatefulWidget {
  @override
  _KaamState createState() => _KaamState();
}

class _KaamState extends State<Kaam> {
  static const IconData circle_outlined =
      IconData(0xef53, fontFamily: 'MaterialIcons');
  static const IconData linear_scale_rounded =
      IconData(0xf858, fontFamily: 'MaterialIcons');
  static const IconData linear_scale_sharp =
      IconData(0xea79, fontFamily: 'MaterialIcons');
  static const IconData line_weight_sharp =
      IconData(0xea78, fontFamily: 'MaterialIcons');
  static const IconData circle_outlined2 =
      IconData(0xef53, fontFamily: 'MaterialIcons');

  int? isHovered;
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
          
            Text('ZILA PARISHAD NALANDA',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontFamily: 'poppins',
                    decoration: TextDecoration.none)),
            SizedBox(
              height: 60,
            ),
            roc(hei, wid),
            SizedBox(
              height: 60,
            ),
            roc(hei, wid),
            SizedBox(
              height: 60,
            ),
            roc(hei, wid),
            SizedBox(
              height: 60,
            ),
            roc(hei, wid),
            CustomPaint(
              painter: MyPainter(),
              // child : SomeWidget(),
            )
          ],
        ),
      ),
    );
  }

  Stack roc(double hei, double wid) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 16, // Move the container down by 30 pixels
          child: Container(
            color: Colors.black,
            height: 5, // Change height to 5
            width: MediaQuery.of(context).size.width *
                0.75, // Make the container full width
          ),
        ),
        Container(
            color: Colors.cyan[200],
             child : CustomPaint(
          painter: MyPainter(),)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            chip("Word",wid, hei),
            chip("Good",wid, hei),
            chip("Bad",wid, hei),
            chip("Worst",wid, hei),
          ],
        ),

      ],
    );
  }

  Container chip(String t1,double wid, double hei) {
    return Container(
        width: wid / 8,
        height: hei / 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Color(0xfffbfbfb),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         
            Container(
              width: wid * 0.02,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Icon(
                circle_outlined,
                size: 35,
              ),
            ),
            
            SizedBox(
              height: 20,
            ),
            Text(t1,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'lato',
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 20,
            ),
            Text('This is a very good app',
                style: TextStyle(
                    fontFamily: 'lato',
                    fontSize: 16,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400)),
          ],
        ));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width /2;
    var centerY = size.height /2;
    var center = Offset(centerX, centerY);
    var radius = math.min(centerX,centerY);
    var fillBrush = Paint()
    ..color = Color(0xff444974);

    canvas.drawCircle(center, radius-50, fillBrush);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
}
