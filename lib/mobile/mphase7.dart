import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nsapps_mod/desktop/t1.dart';
import 'package:nsapps_mod/home.dart';

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
      height: MediaQuery.of(context).size.height * 2,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width * 0.4,
          // height : MediaQuery.of(context).size.height * 2,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 212, 230, 255),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 100,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'assets/images/cprath.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: 80,
                                  // color:Colors.purple,
                                  margin: EdgeInsets.all(8),
                                  child: Text("Prathmikta App",
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  // height: 40,
                                  // color:Colors.purple,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      "Revolutionizing travel planning: Our app simplifies booking.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))),
                            ])),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 212, 230, 255),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 100,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'assets/images/ciris.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: 80,
                                  // color:Colors.purple,
                                  margin: EdgeInsets.all(8),
                                  child: Text("Iris App",
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  // height: 40,
                                  // color:Colors.purple,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      "Revolutionizing travel planning: Our app simplifies booking.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))),
                            ])),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 212, 230, 255),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 100,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'assets/images/chome.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: 80,
                                  // color:Colors.purple,
                                  margin: EdgeInsets.all(8),
                                  child: Text("Home App",
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  // height: 40,
                                  // color:Colors.purple,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      "Revolutionizing travel planning: Our app simplifies booking.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))),
                            ])),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 212, 230, 255),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 100,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'assets/images/cdak.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: 80,
                                  // color:Colors.purple,
                                  margin: EdgeInsets.all(8),
                                  child: Text("Dak App",
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  // height: 40,
                                  // color:Colors.purple,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      "Revolutionizing travel planning: Our app simplifies booking.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))),
                            ])),
                  ],
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.55,
                    scrollDirection: Axis.vertical,
                    aspectRatio:16/8,
                    viewportFraction: 0.5,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enlargeCenterPage: true,
                    enlargeFactor: 0.5,
                    reverse: true,
                  ))
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width * 0.4,
          // height : MediaQuery.of(context).size.height * 2,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 212, 230, 255),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 100,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'assets/images/csama.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: 80,
                                  // color:Colors.purple,
                                  margin: EdgeInsets.all(8),
                                  child: Text("Samadhan App",
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  // height: 40,
                                  // color:Colors.purple,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      "Revolutionizing travel planning: Our app simplifies booking.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))),
                            ])),
                
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 212, 230, 255),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 100,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'assets/images/csamaksh.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: 80,
                                  // color:Colors.purple,
                                  margin: EdgeInsets.all(8),
                                  child: Text("Samaksh App",
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  // height: 40,
                                  // color:Colors.purple,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      "Revolutionizing travel planning: Our app simplifies booking.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))),
                            ])),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 212, 230, 255),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 100,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'assets/images/ctaskflow.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: 80,
                                  // color:Colors.purple,
                                  margin: EdgeInsets.all(8),
                                  child: Text("Taskflow App",
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  // height: 40,
                                  // color:Colors.purple,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      "Revolutionizing travel planning: Our app simplifies booking.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))),
                            ])),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 212, 230, 255),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 100,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'assets/images/caspire.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: 80,
                                  // color:Colors.purple,
                                  margin: EdgeInsets.all(8),
                                  child: Text("Aspire App",
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  // height: 40,
                                  // color:Colors.purple,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      "Revolutionizing travel planning: Our app simplifies booking.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff062659),
                                          fontFamily: 'roboto',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))),
                            ])),
                  ],
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.55,
                    // width: MediaQuery.of(context).size.width,
                    scrollDirection: Axis.vertical,
                    aspectRatio: 16 / 8,
                    viewportFraction: 0.6,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enlargeCenterPage: true,
                    enlargeFactor: 0.5,
                    reverse: false,
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}








