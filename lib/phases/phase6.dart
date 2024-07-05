import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsapps_mod/phases/anime2.dart';

class phase6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children : [
          Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Staying ahead with ',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'innovative technology ',
                    style: TextStyle(
                      fontSize: 50,
                      color:Color(0xfffe4d87),
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'exploration. ',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    )),
          
                // TextSpan(
                //     text:
                //         '\n\nNothing that you design is lost in translation. Your creations come complete with CSS and JSX code. Framer is also the only prototyping tool that generates animation code which can be used 1:1 in production. ',
                //     style: TextStyle(
                //       fontSize: 25,
                //       color: Color.fromARGB(255, 0, 0, 0),
                //       fontWeight: FontWeight.w500,
                //     )),
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
               ),



              ]
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
