// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nsapps_mod/desktop/getMeApp.dart';

class Mphase1 extends StatefulWidget {
  final bool hovMD;
  Mphase1(this.hovMD);

  
  @override
  // ignore: library_private_types_in_public_api
  _Mphase1State createState() => _Mphase1State(hovMD);
}

class _Mphase1State extends State<Mphase1> {
final bool hovMD;
  _Mphase1State(this.hovMD);
  @override
  Widget build(BuildContext context) {

    return  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          // color : Color.fromARGB(255, 136, 118, 153),
                          // color : Color(0xff5A258A),
                          color: Color(0xff021024),

                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.91,
                          child: Column(children: [
                          SizedBox(
                          height: 20,),                            
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              // color : Colors.blueAccent,
                              alignment: Alignment.center,

                              child: const Text(
                                'Transforming Your Ideas into innovative apps',
                                style: TextStyle(
                                  fontFamily: 'roboto',
                                  fontSize: 14,
                                  // color: Color(0xffFF576D),
                                  color: Color(0xff7da0ca),
                                ),
                              ),
                            ),
                            SizedBox(
                              height:MediaQuery.of(context).size.height * 0.018,
                            ),
                            // ignore: duplicate_ignore
                            // ignore: sized_box_for_whitespace
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                // color : const Color.fromARGB(255, 68, 255, 130),
                                child: Text(
                                  'Premier development for all platforms.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                             SizedBox(
                              height: MediaQuery.of(context).size.height * 0.018,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                // color : const Color.fromARGB(255, 215, 68, 255),
                                child: const Text(
                                  'Turning your vision into innovative apps, we create custom solutions that drive success and faster growth in the digital realm.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                )),
                            
                             SizedBox(
                              height: MediaQuery.of(context).size.height * 0.008,
                            ),

                            HoverEffectExample(hovMD),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

                            Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            // height: 10,
                            alignment: Alignment.topCenter,
                            // color:Colors.pink,
                            child: ClipRRect(
                            child: Image.asset(
                            'assets/images/dev3.png',
                            fit : BoxFit.fitWidth),),)

                          ]),
                        ),
                      ),
                     
                    ],
                  );
  }
}
