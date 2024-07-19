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
              
              child: ClipRRect(
                  child: Image.asset(
                'assets/images/sideloook.png',
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.5,
                
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
                          text: 'Align project',
                          style : TextStyle(
                          fontSize: 45,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )
                        ),
                        TextSpan(
                          text: ' goals',
                          style : TextStyle(
                          fontSize: 45,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          decoration: TextDecoration.none,
                          color: Color(0xff721FF9),
                        )
                        ),
                        TextSpan(
                          text: ' for efficiency',
                          style : TextStyle(
                          fontSize: 45,
                          letterSpacing: 0,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )
                        )
                      ],
                    ),
                  )
                  // .animate().fade(duration: 2000.ms).slideX(begin: 5, end: 0),
                )),
           SizedBox(height: 30,),

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
                                      "Align project goals for efficiency by evaluating requirements, prioritizing tasks, and streamlining processes. ",
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
                ))
          ],
        )
      ],
    );
  }
}



