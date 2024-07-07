import 'package:flutter/material.dart';

class Mphase3 extends StatefulWidget {
  @override
  _Mphase3State createState() => _Mphase3State();
}

class _Mphase3State extends State<Mphase3> {
  bool _isKnowMoreHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 228, 255),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            // image

            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 180,
              // color:Colors.pink,
              child: ClipRect(
                  child: Image.asset(
                'assets/images/ive.png',
                fit : BoxFit.cover
              )),
            ),

            // SizedBox(
            //   height: 30,
            // ),

            Container(
                child: Text('Project scoping',
                    style: TextStyle(
                        fontFamily: 'roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff052659)))),

            SizedBox(
              height: 30,
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                  'Conduct stakeholder interviews and surveys to identify client goals, pain points, and requirements for a clear project scope statement.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff052659))),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ));
  }
}
