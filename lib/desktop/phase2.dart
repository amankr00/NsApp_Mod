import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class phase2 extends StatelessWidget {
  get context => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      // Purple image and Right - side text
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Padding(
        //   padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 150, 0),
        // child:
        Padding(
          padding: const EdgeInsets.only(right: 70),

          child : Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.65,
              // color: Colors.black,
              alignment: Alignment.center,
              
              child: ClipRect(
                  child: Image.asset(
                'assets/images/sideloook.png',
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.9,
                // width: 800,
                // height: 750,
                fit: BoxFit.cover,
              ))),
              
        ),
        // ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(height: 90,),

            Container(
                // width: 450,
                width: MediaQuery.of(context).size.width * 0.35,
                // color: Colors.black12,

                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Analyzing ',
                          style : TextStyle(
                          fontSize: 50,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )
                        ),
                        TextSpan(
                          text: 'client needs',
                          style : TextStyle(
                          fontSize: 50,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Color(0xff721FF9),
                        )
                        ),
                        TextSpan(
                          text: ' for projects.',
                          style : TextStyle(
                          fontSize: 50,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )
                        )
                      ],
                    ),
                  ).animate().fade(duration: 2000.ms).slideX(begin: 5, end: 0),
                )),

            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  // width: 550,
                  width: MediaQuery.of(context).size.width * 0.3,
                  // height: 300,
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
                ))
          ],
        )
      ],
    );
  }
}



