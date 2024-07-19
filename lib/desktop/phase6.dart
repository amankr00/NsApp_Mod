import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class phase6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Padding(padding: EdgeInsets.only(left : 100),
          child : 
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children : [
          Container(
          // color:Colors.pink,
              width: MediaQuery.of(context).size.width * 0.3,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Staying ahead with ',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'poppins',
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'innovative technology ',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'poppins',
                      color:Color(0xfffe4d87),
                      fontWeight: FontWeight.bold,
                    )),
               
              ]))),
              

               Padding(
                 padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                                      "Stay ahead with innovative technology by embracing advancements, adapting strategies, and implementing cutting-edge solutions proactively.",
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
               ),



              ]
        ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: ClipRect(
            child: Image.asset(
              'assets/images/lowlogo4.png',
              // width: 700,
              // height: 250,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
