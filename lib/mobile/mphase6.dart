import 'package:flutter/material.dart';
import 'package:nsapps_mod/phases/anime2.dart';

class Mphase6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: MediaQuery.of(context).size.width * 1.35,
      width: MediaQuery.of(context).size.width * 0.85,
    decoration: BoxDecoration(
    border : Border.all(
    width: 3,
    color : Color(0xffFC74FD)),
    color: Color.fromARGB(62, 222, 175, 133),
    borderRadius: BorderRadius.circular(30)
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Padding(padding: EdgeInsets.only(left : 40),
          child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children : [
            SizedBox(height: 40,),
            Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Staying ahead with ',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: 'innovative technology ',
                      style: TextStyle(
                        fontSize: 50,
                        color:Color(0xffFC74FD),
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
                                children: [
                                  // Anime2(),
                                  Container(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                    child: Text(
                                      "Stay at the forefront through innovative technology exploration, researching trends, adopting new tools, and enhancing existing systems continually.",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        // color: Colors.black , 
                                        color : Color.fromARGB(255, 255, 255, 255),
                                        fontFamily: 'Inter',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ]),
                            
                          ]),
                 ),
      
      
      
                ]
          ),
          ),
          SizedBox(height: 17,),
          Container(
          // color: Colors.purple,
            // width: MediaQuery.of(context).size.width * 0.9,
            // height: MediaQuery.of(context).size.height * 0.9,

            child: ClipRect(
              child: Image.asset(
            // width: MediaQuery.of(context).size.width * 0.9,
                'assets/images/lowlogo4.png',
                // width: 700,
                // height: 250,
                fit: BoxFit.fitWidth,
              ),
            ),
          )
        ],
      ),
    );
  }
}
