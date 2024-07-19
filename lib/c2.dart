import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class NewPage extends StatefulWidget {
  final String schemeName;
  final String schemeFinHead;
  final String schemeFinYear;
  NewPage(this.schemeName, this.schemeFinHead, this.schemeFinYear);

  @override
  _NewPageState createState() =>
      _NewPageState(schemeName, schemeFinHead, schemeFinYear);
}

class _NewPageState extends State<NewPage> {
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

  bool oe = false;

  Color background = Color(0xff004AAD);
  Color textColor = Colors.white;
  int counter = 0;

  final String schemeName;
  final String schemeFinHead;
  final String schemeFinYear;
  _NewPageState(this.schemeName, this.schemeFinHead, this.schemeFinYear);

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff004AAD),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('ZILA PARISHAD NALANDA',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 50,
                      fontFamily: 'poppins',
                      decoration: TextDecoration.none)),
              SizedBox(height: 20),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 195, 255),
                ),
                width: wid * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Financial Head :$schemeFinHead',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'lato1',
                            decoration: TextDecoration.none)),
                    SizedBox(width: 40),
                    Text('Scheme Name : $schemeName',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'lato1',
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal)),
                    SizedBox(width: 40),
                    Text('Financial Year : $schemeFinYear',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'lato1',
                            decoration: TextDecoration.none)),
                  ],
                ),
              ),
              SizedBox(height: 30),
              for (int i = 0; i < 3; i++) ...[
                roc(hei, wid, i),
                SizedBox(height: 60),
              ],
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  int callCount = 0;

  Stack roc(double hei, double wid, int i) {
    bool curve = false;
    bool roc = (callCount % 2 == 1); // roc is true on every odd call

    callCount++; // Increment call count after checking roc

    List<String> rowData = [
      "Scheme Details",
      "NOC Letters",
      "ACEO Approval",
      "DDC Approval"
    ];

    if (i == 1) {
      rowData = [
        "Ex Engg MB, Bills",
        "MB Approved by TA",
        "TA Monitoring",
        "Ex Engg Work Order"
      ];
    } else if (i == 2) {
      rowData = [
        "Inspection by Ex Engg",
        "Accountant File Put Up",
        "DDC Final Approval",
        "Scheme Completed"
      ];
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 27,
          child: Container(
            color: textColor,
            height: 4,
            width: MediaQuery.of(context).size.width * 0.75,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (var text in rowData)
              chip(text, wid, hei, textColor, background),
          ],
        ),
        roc
            ? Positioned(
                top: 29,
                left: 65,
                child: SemicircleWidget(
                    radius: 116,
                    strokeWidth: 4,
                    color: textColor,
                    curve: curve),
              )
            : Positioned(
                top: 29,
                right: 65,
                child: SemicircleWidget(
                    radius: 116,
                    strokeWidth: 4,
                    color: textColor,
                    curve: curve = true), // curve = true
              )
      ],
    );
  }

  Container chip(
      String t1, double wid, double hei, Color colort, Color colorb) {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width / 8,
        height: MediaQuery.of(context).size.height / 4.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color:Colors.black,
          // color:Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: colorb,
                    ),
                  ),
                ),
                Icon(
                  circle_outlined,
                  size: 35,
                  color: colort,
                ),
              ],
            ),
            Text(t1,
                style: TextStyle(
                    color: textColor,
                    fontFamily: 'lato',
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 5,
            ),
            Text('Click here to download!',
                style: TextStyle(
                  color: textColor,
                  fontFamily: 'lato1',
                  fontSize: 16,
                )),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                width: MediaQuery.of(context).size.width / 12,
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                    style: TextStyle(
                        fontFamily: 'lato1',
                        fontSize: 14,
                        color: textColor,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal)),
              ),
            ),
          ],
        ));
  }
}

class SemicircleWidget extends StatelessWidget {
  final double radius;
  final double strokeWidth;
  final Color color;
  bool curve;

  SemicircleWidget(
      {required this.radius,
      required this.strokeWidth,
      required this.color,
      required this.curve});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: curve
          ? SemicirclePainter1(strokeWidth: strokeWidth, color: color)
          : SemicirclePainter(strokeWidth: strokeWidth, color: color),
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
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height), radius: radius),
      pi - 1.6,
      pi,
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
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height), radius: radius),
      pi + 1.55,
      pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
