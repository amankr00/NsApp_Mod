import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nsapps_mod/desktop/t1.dart';
import 'package:nsapps_mod/home.dart';
import 'package:nsapps_mod/test2.dart';

class Mphase7 extends StatefulWidget {
  @override
  _Mphase7State createState() => _Mphase7State();
}

class _Mphase7State extends State<Mphase7> {
  bool _isKnowMoreHovered = false;
  @override
  Widget build(BuildContext context) {
    return 

Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        // color: const Color.fromARGB(255, 0, 38, 255),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: MediaQuery.of(context).size.height * 0.98,
                        // margin : EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          // color: Color.fromARGB(255, 115, 25, 25),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.pink),
                        ),
                        child: Column(
                          children: [
                            //image
                            Container(
                                // color :Colors.purple,
                                child: ClipRect(
                              child: Image.asset(
                                'assets/images/cup.png',
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                              ),
                            )),
                            //text

                            Container(
                                // color :Colors.purple,
                                child: Text('Our Apps',
                                    style: TextStyle(
                                        color: Color(0xff062659),
                                        fontFamily: 'roboto',
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold))),

                            // text
                            SizedBox(
                              height: 30,
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                // color :Colors.purple,
                                alignment: Alignment.center,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'Our commitment to excellence and innovation has helped us become the leading digital transformation agency in Texas.',
                                    style: TextStyle(
                                        color: Color(0xff052659),
                                        fontFamily: 'roboto',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal))),

                            SizedBox(
                              height: 30,
                            ),
                            //list view
                            Container(
                              width: MediaQuery.of(context).size.width * 0.84,
                              height: MediaQuery.of(context).size.height * 0.6,
                              // color: Colors.purple,
                              alignment: Alignment.center,
                              child: HomeScreen(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                  }
                  }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 2,
      // color:Color.fromARGB(255, 105, 233, 30),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        
                  Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width * 0.4,
                  // color : Colors.lightGreen,
                  child : ContainerList()),

                  ContainerList2(),

    
      ]),
    );
  }
}








