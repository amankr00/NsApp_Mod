import 'package:flutter/material.dart';
import 'package:nsapps_mod/phases/anime2.dart';

class Mphase5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top : 10),
    child  : Container(
    height: MediaQuery.of(context).size.width * 1.3,
      width: MediaQuery.of(context).size.width * 0.85,
    decoration: BoxDecoration(
     border: Border.all(
          color: Color(0xffFFAE42), // Border color
          width: 3,           // Border width
        ),
    color: Color.fromARGB(91, 226, 124, 168),
    borderRadius: BorderRadius.circular(30)
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SizedBox(height: 40,),
          Container(
          // color : Colors.yellow,
            child: ClipRRect(
                child: Image.asset(
            // width: MediaQuery.of(context).size.width * 0.9,
              'assets/images/lowlogo3.png',
              fit: BoxFit.fitWidth,
            )),
          ),
          // ),
      
          Padding(padding: EdgeInsets.only(left : 27 , top : 0),
      
          child :
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  // width : 380,
                  // height: 130,
                  width: MediaQuery.of(context).size.width * 0.77,
                  // color: const Color.fromARGB(255, 178, 218, 180),
                  child: RichText(
                  textAlign: TextAlign.start,
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Ensuring ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'legal ',
                      style: TextStyle(
                        color: Color(0xffFFAE42),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'data security ',
                      style: TextStyle(
                        color:  Color(0xffFFAE42),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'compliance',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]))),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 30 ),
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: MediaQuery.of(context).size.height * 0.1,
                                // color : Colors.amber,
                                  child: Text(
                                    'Ensure adherence to legal and data security standards by following regulations, implementing robust protocols, and regularly auditing for risks.',
                                    style: TextStyle(
                                      // decoration: TextDecoration.lineThrough,
                                      decoration: TextDecoration.none,
                                      // color: Colors.black,
                                      color  :Color.fromARGB(255, 255, 255, 255),
                                      // color : Color(0xffEEF7FF),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.normal,
                                      // decoration: TextDecoration.none,/
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ]),
                       
                          
                        ]),
              ),
              SizedBox(height: 30,),
            ],
          )
          )
        ],
      ),
    ));
  }
}
