import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class phase5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
        padding: EdgeInsetsDirectional.only(end: 159),
        child :

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
        ),

        Padding(padding: EdgeInsets.only(right: 25),

        child :
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                // width : 380,
                // height: 130,
                width: MediaQuery.of(context).size.width * 0.33,
                // color: Colors.green,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'One codebase',
                    style: TextStyle(
                      color: Color(0xff008cf7),
                      fontSize: 45,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ', multiple platform deployment.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 3, 4),
                      fontSize: 45,
                      fontFamily: 'poppins',
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
                                      "Develop one codebase to deploy across multiple platforms, ensuring consistent functionality and user experience everywhere.",
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
          ],
        )
        )
      ],
    );
  }
}
