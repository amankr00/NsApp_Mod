// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nsapps_mod/desktop/getMeApp.dart';

class Mphase1 extends StatefulWidget {
  const Mphase1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Mphase1State createState() => _Mphase1State();
}

class _Mphase1State extends State<Mphase1> {
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
                          height: 30,),                            
                            Container(
                              width: MediaQuery.of(context).size.width * 0.68,
                              // color : Colors.blueAccent,
                              alignment: Alignment.center,

                              child: const Text(
                                'Transforming Your Ideas into innovative apps',
                                style: TextStyle(
                                  fontFamily: 'roboto',
                                  fontSize: 16,
                                  // color: Color(0xffFF576D),
                                  color: Color(0xff7da0ca),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // ignore: duplicate_ignore
                            // ignore: sized_box_for_whitespace
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                // color : const Color.fromARGB(255, 68, 255, 130),
                                child: Text(
                                  'Cutting-edge bespoke mobile and web app development services.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                // color : const Color.fromARGB(255, 215, 68, 255),
                                child: const Text(
                                  'Turning your vision into innovative apps, we create custom solutions that drive success and faster growth in the digital realm.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                )),
                            const SizedBox(
                              height: 20,
                            ),

                            HoverEffectExample(),

                            // SizedBox(
                            //   height: 50,
                            // ),
                            // Anime5(),
                            Container(
                            width: MediaQuery.of(context).size.width * 0.72,
                            // height: 10,
                            alignment: Alignment.topCenter,
                            // color:Colors.pink,
                            child: ClipRRect(
                            child: Image.asset(
                            'assets/images/bar.png',
                            fit : BoxFit.fitWidth),),)

                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  );
  }
}
