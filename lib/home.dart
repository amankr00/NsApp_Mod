import 'package:flutter/material.dart';
import 'package:nsapps_mod/desktop/footer.dart';
import 'package:nsapps_mod/mobile/foot.dart';
import 'package:nsapps_mod/mobile/footer.dart';
import 'dart:async';
import 'package:nsapps_mod/mobile/mphase1.dart';
import 'package:nsapps_mod/mobile/mphase2.dart';
import 'package:nsapps_mod/mobile/mphase3.dart';
import 'package:nsapps_mod/mobile/mphase6.dart';
import 'package:nsapps_mod/mobile/mphase7.dart';
import 'package:nsapps_mod/mobile/navbar.dart';
import 'package:nsapps_mod/desktop/navbar.dart';
import 'package:nsapps_mod/desktop/phase2.dart';
import 'package:nsapps_mod/desktop/phase3.dart';
import 'package:nsapps_mod/desktop/phase4Viewer.dart';
import 'package:nsapps_mod/desktop/phase1.dart';
import 'package:nsapps_mod/desktop/phase5.dart';
import 'package:nsapps_mod/desktop/phase6.dart';
import 'package:nsapps_mod/desktop/phase7.dart';
import 'package:nsapps_mod/mobile/applistHorizontal.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'mobile/mphase8.dart';

class HomeMain extends StatefulWidget {
  final String title;
  HomeMain({Key? key, required this.title}) : super(key: key);
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  final PageController controller = PageController(initialPage: 1);
  Timer? timer;
  late bool hov = true;

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
              mobile: (BuildContext context) => MobileLy(hov = true),
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
    hov = false;
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Navbar
              navbar(),

              Phase1(pRt, pLt, hov),

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

              // phase7(),

              Bottom(),

              
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
  late final bool hovMD;
  MobileLy(this.hovMD);
  @override
  _MobileLyState createState() => _MobileLyState(hovMD);
}

class _MobileLyState extends State<MobileLy> {
  bool hovMD;
  _MobileLyState(this.hovMD);
  final ScrollController _scrollController = ScrollController();
  double _scale = 1.0;
  bool hovMd = true;

  @override
  Widget build(
    BuildContext context,
  ) {
    // bool _isDownloadHovered = false;

    final _containerHeight = 300.0;
    final _containerwidth = 400.0;
    double _scrollOffset = 0.0;

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
      body: Column(
        children: [
          Navbar(),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollUpdateNotification) {
                  setState(() {
                    _scrollOffset = scrollNotification.scrollDelta!;
                  });
                }
                return true;
              },
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Mphase1(hovMD),
                    Container(
                      height: 100,
                      color: Color.fromARGB(255, 222, 222, 222),
                      child: HorizontalListView(),
                    ),
                    Mphase2(),
                    Mphase3(),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Color(0xffFFDADA),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            height: 180,
                            child: ClipRect(
                              child: Image.asset(
                                'assets/images/manage.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Task management',
                              style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff052659),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              'Allocating resources and budgeting tasks involves effectively distributing available assets and financial planning to achieve project goals efficiently.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff052659),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 234, 251),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 200,
                            child: ClipRect(
                              child: Image.asset(
                                'assets/images/inno.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Innovative technology',
                              style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff052659),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              'Our company harnesses innovation to deliver cutting-edge solutions that redefine industry standards. By embracing advanced technology.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff052659),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                    Mphase6(),
                    Mphase7(),
                    SizedBox(height: 30),
                    Mphase8(),
                    SizedBox(height: 30),
                    Foot(),
                    
                  
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
