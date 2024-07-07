import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class phase5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Padding(
        // padding: EdgeInsetsDirectional.only(end: 159),
        // child :
        Container(
          // width: 750,
          // height: 700,
          width: MediaQuery.of(context).size.width * 0.37,
          // color: Colors.purple,
          child: ClipRRect(
              child: Image.asset(
            'assets/images/lowlogo3.png',
          )),
        ),
        // ),

        // Padding(padding: EdgeInsetsDirectional.only(end: 200),

        // child :
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                // width : 380,
                // height: 130,
                width: MediaQuery.of(context).size.width * 0.4,
                // color: Colors.green,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Ensuring ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 3, 4),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'legal ',
                    style: TextStyle(
                      color: Color(0xff008cf7),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'data security ',
                    style: TextStyle(
                      color:  Color(0xff008cf7),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'compliance',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]))),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 30),
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
                                  // height: MediaQuery.of(context).size.height * 0.3,
                                  child: Text(
                                      "Conduct stakeholder interviews and surveys to identify client goals, pain points, and requirements for a clear project scope statement.",
                                      style:TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      )))
                              ]),
                        
                      ]),
            )
          ],
        )
      ],
    );
  }
}
