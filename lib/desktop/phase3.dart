import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class phase3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(90, 0, 0, 0),
          child:
              Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                // width: 400,
                width: MediaQuery.of(context).size.width * 0.3,
                // height: 300,
                child: RichText(
                    text: TextSpan(children: [
                  // TextSpan(
                  //   text: 'Strategizing timelines, ',
                  //   style: TextStyle(
                  //     color: const Color.fromARGB(255, 3, 3, 3),
                  //     fontSize: 50,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  TextSpan(
                    text: 'Allocating resources and ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 45,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'budgeting tasks.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 231, 11),
                      fontSize: 45,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]))),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Anime2(),
                                Container(
                                  // color : Colors.blueAccent,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  // height: MediaQuery.of(context).size.heght * 0.3,
                                  child: Text(
                                      "Allocate resources and budget tasks effectively to optimize project outcomes and ensure timely completion.",
                                      style:TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'poppins',
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      )))
                              ]),
                        
                      ]),
            )
          ]),
        ),
        Container(
            // width: 750,
            // height: 700,
            width: MediaQuery.of(context).size.width * 0.4,
            child: ClipRect(
                child: Image.asset(
              'assets/images/lowlogo2.png',
              fit: BoxFit.contain,
            ))),
      ],
    );
  }
}
