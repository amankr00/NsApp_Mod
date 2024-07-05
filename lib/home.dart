import 'dart:async';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:nsapps_mod/mobile/appAnime.dart';
import 'package:nsapps_mod/mobile/lineAnime.dart';
import 'package:nsapps_mod/mobile/mphase1.dart';
import 'package:nsapps_mod/mobile/mphase2.dart';
import 'package:nsapps_mod/mobile/mphase3.dart';
import 'package:nsapps_mod/mobile/mphase5.dart';
import 'package:nsapps_mod/mobile/mphase6.dart';
import 'package:nsapps_mod/mobile/mphase7.dart';
import 'package:nsapps_mod/mobile/mphaseViewer.dart';
import 'package:nsapps_mod/mobile/navbar.dart';
import 'package:nsapps_mod/mobile/test.dart';
import 'package:nsapps_mod/phases/anime.dart';
import 'package:nsapps_mod/phases/anime2.dart';
import 'package:nsapps_mod/phases/anime3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsapps_mod/navbar/navbar.dart';
import 'package:nsapps_mod/phases/anime5.dart';
import 'package:nsapps_mod/phases/arrowRt.dart';
import 'package:nsapps_mod/phases/customWidget.dart';
import 'package:nsapps_mod/phases/getMeApp.dart';
import 'package:nsapps_mod/phases/phase2.dart';
import 'package:nsapps_mod/phases/phase3.dart';
import 'package:nsapps_mod/phases/phase4Viewer.dart';
import 'package:nsapps_mod/phases/phase1.dart';
import 'package:nsapps_mod/phases/snakbar.dart';
import 'package:nsapps_mod/phases/t.dart';
import 'package:nsapps_mod/phases/phase5.dart';
import 'package:nsapps_mod/phases/phase6.dart';
import 'package:nsapps_mod/phases/phase7.dart';
import 'package:nsapps_mod/phases/t.dart';
import 'package:nsapps_mod/phases/t1.dart';
import 'package:nsapps_mod/phases/parallex.dart';
import 'package:nsapps_mod/phases/video.dart';
import 'package:nsapps_mod/testHome.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
// class IconItem extends StatefulWidget {
//   final String appName;
//   final String imageUrl;
//   IconItem(this.appName, this.imageUrl);

//   @override
//   _IconItemState createState() => _IconItemState(imageUrl);
// }

// class _IconItemState extends State<IconItem> {
//   bool _isHovered = false;
//   final String imageUrl;

//   _IconItemState(this.imageUrl);

//   @override

class HomeMain extends StatefulWidget {
  final String title;
  HomeMain({Key? key, required this.title}) : super(key: key);
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  final PageController controller = PageController(initialPage: 1);
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      // Check if the controller and its page are valid
      if (controller.hasClients) {
        final int nextPage = (controller.page!.round() + 1) % 4;
        controller.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
            top: true,
            child: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => MobileLy(),
              desktop: (BuildContext context) =>
                  completePage(context, "tablet"),
              tablet: (BuildContext context) => completePage(context, "mobile"),
            )),
      ),
    );
  }

  SingleChildScrollView completePage(BuildContext context, String type) {
    startTimer();
    double pRt = MediaQuery.of(context).size.width;
    double pLt = MediaQuery.of(context).size.width;
    bool _isDrawerOpen = false;

    // void _toggleDrawer() {
    //   setState(() {
    //     _isDrawerOpen = !_isDrawerOpen;
    //   });
    // }

    // void pr(int prt)
    // {
    // print(prt);
    // }
    if (type == "Mobile") {
      pRt = pRt * 0.02;
    } else if (type == "tablet") {
      pRt = pRt * 0.08;
      pLt = pLt * 0.02;
    } else {
      if (pRt < 1000) {
        pRt = pRt * 0.14;
        pLt = pLt * 0.4;
      } else {
        pRt = 150;
        pLt = 50;
      }
    }

    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(children: [
          Anime3(),
          // App2(),
          // PopupWidget(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Button(),
              // zero(),
              // AnimatedTextExample(),
              // para(initialText: 'Hello, Starkiee!'),

              // Navbar
              navbar(),
              // Lower Body  -> 1st phase
              // Page1(),
              // MyCustomWidget(),
              // HomeScreen(),
              // Cal(),
              Phase1(pRt, pLt),

              SizedBox(
                height: 20,
              ),

              Container(
                      child: Text(
                          'Trusted by some of the best in the business', //$pRt'
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'work-sans',
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            color: Color.fromARGB(255, 148, 146, 146),
                          )))
                  .animate()
                  .fade(delay: 100.ms)
                  .slideY(begin: -100, end: 0),
              // .shake(),

              SizedBox(
                height: 50,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconItem('IRIS APP', 'assets/images/iris.png'),
                IconItem('TaskFlow App', 'assets/images/taskflow.png'),
                IconItem('Samadhan App', 'assets/images/samadhan.png'),
                IconItem('Maa App', 'assets/images/maa.png'),
                IconItem('Samaksh', 'assets/images/samaksh.png'),
                IconItem('Home Insights', 'assets/images/home.png'),
                IconItem('Shravani', 'assets/images/shravani.png'),
                IconItem('Prathmikta', 'assets/images/prathmikta.png'),
                IconItem('DakPad', 'assets/images/da.png'),
              ]),
              // App()
              // .animate()
              //       .fade(delay: 100.ms)
              //       .slideY(begin: 1,end: 0),

              SizedBox(
                height: 70,
              ),

              // Phase 2

              phase2(),

              // 3rd phase

              phase3(),

              // 4th phase
              Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Container(
                      height: 450,
                      color: Color.fromRGBO(243, 239, 239, 0.561),
                      child: Phase4Viewer())),

              // 5th phase

              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: phase5(),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 100),
                child: phase6(),
              ),

              phase7(),
              // VideoPlayerScreen(),
              // test(),
            ],
          ),
        ]));

    // final controller = PageController(initialPage: 1);
  }
}

class IconItem extends StatefulWidget {
  final String appName;
  final String imageUrl;
  IconItem(this.appName, this.imageUrl);

  @override
  _IconItemState createState() => _IconItemState(imageUrl);
}

class _IconItemState extends State<IconItem> {
  bool _isHovered = false;
  final String imageUrl;

  _IconItemState(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(_isHovered ? 1.4 : 1.0),
        transformAlignment: Alignment.center,
        child: Container(
            width: 100,
            //alignment: Alignment.center,
            child: ClipRect(
                child: Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ))),
      ),
    );
  }
}

class MobileLy extends StatefulWidget {
  @override
  _MobileLyState createState() => _MobileLyState();
}

class _MobileLyState extends State<MobileLy> {
  @override
  Widget build(BuildContext context) {
    bool isDownloadHovered = false;

    final _containerHeight = 300.0;
    final _containerwidth = 400.0;
    final ScrollController _scrollController = ScrollController();

    void _scrollToTap(int index) {
      _scrollController.animateTo(index * _containerHeight,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }

    String ty = "MOB";
    double pRt = MediaQuery.of(context).size.width;
    double pLt = MediaQuery.of(context).size.width;
    if (ty == "Mobile") {
      pRt = pRt * 0.02;
    } else if (ty == "tablet") {
      pRt = pRt * 0.08;
      pLt = pLt * 0.02;
    } else {
      if (pRt < 1000) {
        pRt = pRt * 0.14;
        pLt = pLt * 0.4;
      } else {
        pRt = 150;
        pLt = 50;
      }
    }
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(children: [
          Navbar(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 50,
                  // ),

                  Stack(
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
                              height: 40,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.68,
                              // color : Colors.blueAccent,
                              alignment: Alignment.center,

                              child: Text(
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
                              height: 30,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                // color : const Color.fromARGB(255, 68, 255, 130),
                                child: Text(
                                  'Your trusted ally in navigation of evolving digital landscape.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                // color : const Color.fromARGB(255, 215, 68, 255),
                                child: Text(
                                  'Turning your vision into innovative apps, we create custom solutions that drive success and faster growth in the digital realm.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            // AnimatedContainer(
                            //     width: MediaQuery.of(context).size.width * 0.40,
                            //     height:
                            //         MediaQuery.of(context).size.height * 0.08,
                            //     alignment: Alignment.center,
                            //     decoration: BoxDecoration(
                            //       // color: Color(0xffFF576D),
                            //       color: Color(0xff5483b3),
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //     duration: 1500.ms,
                            //     child: Text(
                            //       'LEARN MORE',
                            //       style: TextStyle(
                            //           fontSize: 18,
                            //           fontFamily: 'roboto',
                            //           fontWeight: FontWeight.normal,
                            //           color: Colors.white),
                            //     )),

                            HoverEffectExample(),

                            // SizedBox(
                            //   height: 40,
                            // ),
                            Anime5(),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),

                  Container(
                    height: 100,
                    color: Color(0xffFBF7FF),
                    child: HorizontalListView(),
                  ),

                  // phase 2

                  Container(
                    // color : Colors.pink,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            // color : Colors.red,
                            child: Text('WHO ARE WE',
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff052659)))),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            // color : Colors.red,
                            width: MediaQuery.of(context).size.width * 0.70,
                            alignment: Alignment.center,
                            child: Text(
                                'Building digital products from scratch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff052659)))),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            alignment: Alignment.center,
                            child: Text(
                                "We're a team of product managers, engineers and designers passionate about helping companies create products that bring joy, scale and succeed. It's simple- our goal is to create revolutionary products, together.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff052659)))),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text('KNOW MORE',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff021024))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),

                  // PHASE - 3

                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 228, 255),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          // image

                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            // height: 60,
                            child: ClipRect(
                                child: Image.asset(
                              'assets/images/client.png',
                            )),
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Container(
                              child: Text('Project scoping',
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff052659)))),

                          SizedBox(
                            height: 30,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                                'Conduct stakeholder interviews and surveys to identify client goals, pain points, and requirements for a clear project scope statement.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff052659))),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      )),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Color(0xffFFDADA),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          // image

                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            // height: 60,
                            child: ClipRect(
                                child: Image.asset(
                              'assets/images/manage.png',
                            )),
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Container(
                              child: Text('Task management',
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff052659)))),

                          SizedBox(
                            height: 30,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                                'Allocating resources and budgeting tasks involves effectively distributing available assets and financial planning to achieve project goals efficiently.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff052659))),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 234, 251),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          // image

                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            // height: 60,
                            child: ClipRect(
                                child: Image.asset(
                              'assets/images/inno.png',
                            )),
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Container(
                              child: Text('Innovative technology',
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff052659)))),

                          SizedBox(
                            height: 30,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                                'Conduct stakeholder interviews and surveys to identify client goals, pain points, and requirements for a clear project scope statement.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff052659))),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 30,
                  ),

                  Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      // width: MediaQuery.of(context).size.width * 0.95,
                      color: Color(0xff7da0ca),
                      alignment: Alignment.center,
                      child: Stack(
                       alignment:AlignmentDirectional.center,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              // width: MediaQuery.of(context).size.height,
                              child: ClipRect(
                                child: Image.asset('assets/images/line.png',
                                    fit: BoxFit.fill),
                              )),
                              
                          Opacity(opacity: 0.7,    
                          child : Container(
                              width: MediaQuery.of(context).size.width * 0.6 ,
                              // height: MediaQuery.of(context).size.height * 0.6,
                              alignment: Alignment.center,
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Stack(children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        // color : Colors.purple,
                                        alignment: Alignment.center,
                                        child: Text(
                                            'Converting your idea into a pillar of the startup community',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'roboto',
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff052659)))),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        // color : Colors.purple,
                                        alignment: Alignment.center,
                                        child: Text(
                                            'At Simublade Labs, we build your digital product idea from the ground up and make it an investors’ favorite. A journey that starts and is embedded with emerging technologies.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'roboto',
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff052659)))),
                                  ],
                                ),
                                Positioned(
                                    top: 300,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.33,
                                        color: Colors.purple,
                                        alignment: Alignment.center,
                                        child: Chip(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              side: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            avatar: CircleAvatar(
                                                child: Container(
                                              child: ClipRect(
                                                  child: Image.asset(
                                                'assets/images/manage.png',
                                                width: 70,
                                                height: 70,
                                              )),
                                            )),
                                            backgroundColor: Color(0xffFEF7FF),
                                            label: Text(
                                              'Android Studio',
                                              style: TextStyle(
                                                  color: Color(0xff021024),
                                                  fontFamily: 'roboto',
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            )))),
                                Positioned(
                                    top: 300,
                                    left: 80,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        // color : Colors.purple,
                                        alignment: Alignment.center,
                                        child: Chip(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              side: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            avatar: CircleAvatar(
                                                child: Container(
                                              child: ClipRect(
                                                  child: Image.asset(
                                                'assets/images/manage.png',
                                                width: 70,
                                                height: 70,
                                              )),
                                            )),
                                            backgroundColor: Color(0xffFEF7FF),
                                            label: Text(
                                              'Android Studio',
                                              style: TextStyle(
                                                  color: Color(0xff021024),
                                                  fontFamily: 'roboto',
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            )))),
                                Positioned(
                                    top: 360,
                                    left: 80,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        // color : Colors.purple,
                                        alignment: Alignment.center,
                                        child: Chip(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              side: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            avatar: CircleAvatar(
                                                child: Container(
                                              child: ClipRect(
                                                  child: Image.asset(
                                                'assets/images/manage.png',
                                                width: 70,
                                                height: 70,
                                              )),
                                            )),
                                            backgroundColor: Color(0xffFEF7FF),
                                            label: Text(
                                              'AR/VR',
                                              style: TextStyle(
                                                  color: Color(0xff021024),
                                                  fontFamily: 'roboto',
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            )))),
                                Positioned(
                                    top: 360,
                                    left: -90,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        // color : Colors.purple,
                                        alignment: Alignment.center,
                                        child: Chip(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              side: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            avatar: CircleAvatar(
                                                child: Container(
                                              child: ClipRect(
                                                  child: Image.asset(
                                                'assets/images/manage.png',
                                                width: 70,
                                                height: 70,
                                              )),
                                            )),
                                            backgroundColor: Color(0xffFEF7FF),
                                            label: Text(
                                              'Artificial Intelligence',
                                              style: TextStyle(
                                                  color: Color(0xff021024),
                                                  fontFamily: 'roboto',
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            )))),
                                Positioned(
                                    top: 420,
                                    left: -100,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        // color : Colors.purple,
                                        alignment: Alignment.center,
                                        child: Chip(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              side: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            avatar: CircleAvatar(
                                                child: Container(
                                              child: ClipRect(
                                                  child: Image.asset(
                                                'assets/images/manage.png',
                                                width: 70,
                                                height: 70,
                                              )),
                                            )),
                                            backgroundColor: Color(0xffFEF7FF),
                                            label: Text(
                                              'Internet of Things',
                                              style: TextStyle(
                                                  color: Color(0xff021024),
                                                  fontFamily: 'roboto',
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            )))),
                                Positioned(
                                    top: 420,
                                    left: 100,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        // color : Colors.purple,
                                        alignment: Alignment.center,
                                        child: Chip(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              side: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            avatar: CircleAvatar(
                                                child: Container(
                                              child: ClipRect(
                                                  child: Image.asset(
                                                'assets/images/manage.png',
                                                width: 70,
                                                height: 70,
                                              )),
                                            )),
                                            backgroundColor: Color(0xffFEF7FF),
                                            label: Text(
                                              'Machine Learning',
                                              style: TextStyle(
                                                  color: Color(0xff021024),
                                                  fontFamily: 'roboto',
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            )))),
                                Positioned(
                                    top: 480,
                                    left: -20,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        // color : Colors.purple,
                                        alignment: Alignment.center,
                                        child: Chip(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              side: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            avatar: CircleAvatar(
                                                child: Container(
                                              child: ClipRect(
                                                  child: Image.asset(
                                                'assets/images/manage.png',
                                                width: 70,
                                                height: 70,
                                              )),
                                            )),
                                            backgroundColor: Color(0xffFEF7FF),
                                            label: Text(
                                              'Machine Learning',
                                              style: TextStyle(
                                                  color: Color(0xff021024),
                                                  fontFamily: 'roboto',
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            )))),
                              ]))),
                        ],
                      )),

                  Container(
                    color: Color.fromARGB(255, 132, 190, 39),
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Stack(children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.2,
                          color: Colors.blue,
                          alignment: Alignment.center,
                          child: ClipRect(
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(
                                    0.1), // Set the desired opacity here
                                BlendMode.dstIn,
                              ),
                              child: Image.asset('assets/images/manage.png',
                                  fit: BoxFit.fill),
                            ),
                          )),
                    ]),
                  ),

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
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.58,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                          color: Color(0xffFCECFB),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.27,
                                width: MediaQuery.of(context).size.width * 0.87,
                                decoration: BoxDecoration(
                                    color: Color(0xffFEDEFD),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 20, 0, 0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              decoration: BoxDecoration(
                                                  // color : const Color.fromARGB(255, 223, 178, 231),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Text('BRIEF',
                                                  style: TextStyle(
                                                      color: Color(0xff052659),
                                                      fontFamily: 'roboto',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              decoration: BoxDecoration(
                                                  // color : const Color.fromARGB(255, 223, 178, 231),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Text(
                                                  'DoughFi and us revolutionized high-risk business banking with a Stellar Network blockchain platform, featuring P2P merchant transfers, QR code lookups, and live chat support, simplifying transactions and enhancing user satisfaction.',
                                                  style: TextStyle(
                                                      color: Color(0xff052659),
                                                      fontFamily: 'roboto',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal))),
                                        ]))),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      //  height: MediaQuery.of(context).size.height * 0.4,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          // color : const Color.fromARGB(255, 223, 178, 231),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Text('TECH STACK',
                                          style: TextStyle(
                                              color: Color(0xff052659),
                                              fontFamily: 'roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold))),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Container(
                                        //     //  height: MediaQuery.of(context).size.height * 0.4,
                                        //     width:
                                        //         MediaQuery.of(context).size.width * 0.3,
                                        //     decoration: BoxDecoration(
                                        //         // color : const Color.fromARGB(255, 223, 178, 231),
                                        //         borderRadius:
                                        //             BorderRadius.circular(30)),
                                        //     child: ClipRect(
                                        //         child: Image.asset(
                                        //             'assets/images/manage.png',
                                        //             fit: BoxFit.contain))),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 223, 178, 231),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Icon(
                                            Icons.flutter_dash,
                                            size: 50.0,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),

                                        Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 223, 178, 231),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Icon(
                                            Icons.microwave_sharp,
                                            size: 50.0,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 223, 178, 231),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Icon(
                                            Icons.apple,
                                            size: 50.0,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 223, 178, 231),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Icon(
                                            Icons.android,
                                            size: 50.0,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ]),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 255, 0, 0),
                                                    width: 1.5)),
                                            child: Text('Android',
                                                style: TextStyle(
                                                    color: Color(0xff052659),
                                                    fontFamily: 'roboto',
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 255, 0, 0),
                                                    width: 1.5)),
                                            child: Text('VS CODE',
                                                style: TextStyle(
                                                    color: Color(0xff052659),
                                                    fontFamily: 'roboto',
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 255, 0, 0),
                                                    width: 1.5)),
                                            child: Text('Flutter',
                                                style: TextStyle(
                                                    color: Color(0xff052659),
                                                    fontFamily: 'roboto',
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    // width: 200,
                    height: 400,
                    color: Colors.blueGrey,
                    // child : ParallaxImage()
                  ),

                  SizedBox(
                    height: 300,
                  ),
                  // SizedBox(width: 80,),

                  //    Expanded(
                  // child: ScrollTransformView(
                  //       children : [
                  //       ScrollTransformItem(
                  //       builder: (scrollOffset){
                  //       final offScreenPercentage = min(scrollOffset / _containerHeight , 1.0);
                  //       return Container(
                  //       // width: 300,
                  //       alignment: Alignment.center,
                  //           // height: _containerHeight,
                  //           height: _containerHeight - (_containerHeight * 0.5 * offScreenPercentage),
                  //           width: _containerwidth - (_containerwidth * 0.5 * offScreenPercentage),

                  //           color: Colors.purple,
                  //           child: ClipRect(
                  //           child : Image.asset('assets/images/b.jpg',
                  //           )));},
                  //           offsetBuilder: (scrollOffset) {
                  //            final offScreenPercentage = min(scrollOffset / _containerHeight , 1.0);
                  //            final heightShrinkageAmount =  _containerHeight - (_containerHeight * 0.2 * offScreenPercentage);
                  //            final bool startMovingImage = scrollOffset >= _containerHeight;
                  //            final double onScreenOffset = scrollOffset + heightShrinkageAmount/2;
                  //           return Offset(0, !startMovingImage? onScreenOffset : onScreenOffset - ( scrollOffset - heightShrinkageAmount));
                  //           }),
                  //       ScrollTransformItem(
                  //       builder: (scrollOffset){
                  //       return Container(
                  //       alignment: Alignment.center,
                  //           height: _containerHeight,

                  //           color: Color.fromARGB(97, 73, 59, 75),
                  //           child: const Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum  ",
                  //           style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);},
                  //           offsetBuilder: (scrollOffset) => Offset(0, -_containerHeight+90),),

                  //       ScrollTransformItem(
                  //       builder: (context){
                  //       return Container(
                  //       alignment: Alignment.center,
                  //           height: _containerHeight,
                  //           color: Color.fromARGB(72, 39, 176, 76),
                  //           child: const Text("Item",
                  //           style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);}),
                  //       ScrollTransformItem(
                  //       builder: (context){
                  //       return Container(
                  //       alignment: Alignment.center,
                  //           height: _containerHeight, color: Color.fromARGB(91, 176, 165, 39),
                  //           child: const Text("Item",
                  //           style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);}),
                  //       ScrollTransformItem(
                  //       builder: (context){
                  //       return Container(
                  //       alignment: Alignment.center,
                  //           height: _containerHeight, color: Color.fromARGB(101, 176, 108, 39),
                  //           child: const Text("Item",
                  //           style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);}),
                  //       ScrollTransformItem(
                  //       builder: (context){
                  //       return Container(
                  //       alignment: Alignment.center,
                  //           height: _containerHeight, color: Color.fromARGB(106, 176, 39, 73),
                  //           child: const Text("Item",
                  //           style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);}),
                  //           ]
                  //     ))

                  // Expanded(
                  //   child: SingleChildScrollView(
                  //       child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Container(
                  //           child: Stack(children: [
                  //         // Container(
                  //         //       width: MediaQuery.of(context).size.width * 1,
                  //         //       // height: MediaQuery.of(context).size.height * 1,
                  //         //       // height: 300,
                  //         //       color: Color.fromRGBO(255, 255, 255, 0.7),
                  //         //       child: ClipRect(
                  //         //           child: Opacity(
                  //         //         opacity:
                  //         //             0.3, // Adjust the opacity level (0.0 - fully transparent, 1.0 - fully opaque)
                  //         //         child: Image.asset('assets/images/pex.jpg'),
                  //         //       ))),
                  //         // Mphase1(pRt, pLt),
                  //       ])),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // MAnime2(),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // Mphase2(),
                  //       // // ScrollAnimatedWidget(),

                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // MAnime2(),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // Mphase3(),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // MAnime2(),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // // MPhase4Viewer(),
                  //       // Padding(
                  //       //     padding: EdgeInsets.only(top: 30, bottom: 30),
                  //       //     child: Container(
                  //       //       height: MediaQuery.of(context).size.width * 0.8,
                  //       //       color: Color.fromRGBO(243, 239, 239, 0.561),
                  //       //       // child: MPhase4Viewer()
                  //       //     )),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // MAnime2(),
                  //       // SizedBox(
                  //       //   height: 17,
                  //       // ),
                  //       // Mphase5(),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // MAnime2(),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // Mphase6(),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // MAnime2(),
                  //       // SizedBox(
                  //       //   height: 30,
                  //       // ),
                  //       // Mphase7(),
                  //     ],
                  //   )),
                  // )
                ]),
          ))
        ]));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.brown,
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
                    // width: MediaQuery.of(context).size.width,
                    scrollDirection: Axis.vertical,
                    aspectRatio: 16 / 8,
                    viewportFraction: 0.6,
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
                    // SizedBox(height: 10,),

                    // )
                    // ]
                    // )

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
