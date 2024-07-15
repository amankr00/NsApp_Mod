import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'dart:math' as math;
import 'dart:math';

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
  
  Color background = Color(0xff004AAD);
  Color textColor = Colors.white;
  int? isHovered;
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
      backgroundColor: Color(0xff004AAD),
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text('ZILA PARISHAD NALANDA',
                    style: TextStyle(
                        color:textColor,
                        fontSize: 50,
                        fontFamily: 'poppins',
                        decoration: TextDecoration.none)),
                SizedBox(
                  height: 60,
                ),

                // for(int i=0;i<4;i++)
                
                roc(hei, wid),
                SizedBox(
                  height: 60,
                ),
                roc1(hei, wid),
                SizedBox(
                  height: 60,
                ),
                roc(hei, wid),
                SizedBox(
                  height: 60,
                ),
                roc1(hei, wid),
                SizedBox(height: 100,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack roc(double hei, double wid) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 27, // Move the container down by 30 pixels
          child: Container(
            color: textColor,
            height: 4, // Change height to 5
            width: MediaQuery.of(context).size.width *
                0.75, // Make the container full width
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            chip("Stage 1", wid, hei ,textColor , background),
            chip("Good", wid, hei,textColor, background),
            chip("Bad", wid, hei,textColor, background),
            chip("Worst", wid, hei,textColor, background),
          ],
        ),
        // Positioned(
        //     top: 37,
        //     right: 60,
        //     child: Center(
        //       child: CustomPaint(
        //         size: Size(200, 100), // Specify the size of the CustomPaint
        //         painter: SemiCirclePainter(),
        //       ),
        //     )),
         Positioned(
         top:28,
         right: 65,
         child:
         SemicircleWidget(radius: 116, strokeWidth: 4, color: textColor,)),

      ],
    );
  }
  Stack roc1(double hei, double wid) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 27, // Move the container down by 30 pixels
          child: Container(
            color: textColor,
            height: 4, // Change height to 5
            width: MediaQuery.of(context).size.width *
                0.75, // Make the container full width
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            chip("Stage 1", wid, hei ,textColor , background),
            chip("Good", wid, hei,textColor, background),
            chip("Bad", wid, hei,textColor, background),
            chip("Worst", wid, hei,textColor, background),
          ],
        ),
        // Positioned(
        //     top: 37,
        //     right: 60,
        //     child: Center(
        //       child: CustomPaint(
        //         size: Size(200, 100), // Specify the size of the CustomPaint
        //         painter: SemiCirclePainter(),
        //       ),
        //     )),
         Positioned(
         top:28,
         left: 65,
         child:
         SemicircleWidget1(radius: 116, strokeWidth: 4, color: textColor,)),

      ],
    );
  }

  Container chip(String t1, double wid, double hei , Color colort , Color colorb ) {
    return Container(
    alignment: Alignment.center,
        width: MediaQuery.of(context).size.width /  8,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Colors.deepPurple[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
            alignment: Alignment.center,
              children: [
              Positioned(
              // top : -10,
              child: 
                Container(
                 width: 60,
                 height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: colorb,
                      )
                ),
                ),
                Icon(
                  circle_outlined,
                  size: 35,
                  color:colort
                ),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Text(t1,
                style: TextStyle(
                    color: textColor,
                    fontFamily: 'lato',
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400)),
            
            Container(
            width: MediaQuery.of(context).size.width / 12 ,
            // height: MediaQuery.of(context).size.height / 3,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                  style: TextStyle(
                      fontFamily: 'lato1',
                      fontSize: 14,
                      color:textColor,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal)),
            ),
          ],
            
        ));
  }
}

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =
          Color.fromARGB(255, 255, 255, 255) // Set the color of the semi-circle
      ..style = PaintingStyle.stroke // Use stroke style
      ..strokeWidth = 4.0; // Set the stroke width

    final path = Path()
      ..arcTo(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height),
            radius: size.width / 1.7),
        1.57 - pi,
        pi,
        false,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false; // Return true if the painter should repaint
  }
}



class SemicircleWidget extends StatelessWidget {
  final double radius;
  final double strokeWidth;
  final Color color;

  SemicircleWidget({required this.radius, required this.strokeWidth, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SemicirclePainter(strokeWidth: strokeWidth, color: color),
      size: Size(radius * 2, radius),
    );
  }
}


class SemicircleWidget1 extends StatelessWidget {
  final double radius;
  final double strokeWidth;
  final Color color;

  SemicircleWidget1({required this.radius, required this.strokeWidth, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SemicirclePainter1(strokeWidth: strokeWidth, color: color),
      size: Size(radius * 2, radius),
    );
  }
}


class SemicirclePainter extends CustomPainter {
  final double strokeWidth;
  final Color color;

  SemicirclePainter({required this.strokeWidth, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double radius = size.width / 2;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width / 2, size.height), radius: radius),
      1.57-pi, // 180 degrees in radians (pi radians)
      pi, // 180 degrees in radians (pi radians)
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class SemicirclePainter1 extends CustomPainter {
  final double strokeWidth;
  final Color color;

  SemicirclePainter1({required this.strokeWidth, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double radius = size.width / 2;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width / 2, size.height), radius: radius),
      4.57-pi, // 180 degrees in radians (pi radians)
      pi, // 180 degrees in radians (pi radians)
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}