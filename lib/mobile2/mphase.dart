import 'package:flutter/material.dart';
import 'package:nsapps_mod/mobile/navbar.dart';

class MobileLy extends StatefulWidget {
  @override
  _MobileLyState createState() => _MobileLyState();
}

class _MobileLyState extends State<MobileLy> {
  @override
  Widget build(BuildContext context) {
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
        // backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Stack(children: [
      Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          // color: Colors.purple,
          // height: 300,
          child: ClipRect(
            child: Opacity(
              opacity: 0.9, // Set the opacity value (0.0 to 1.0)
              child: Image.asset('assets/images/bg.jpg', fit: BoxFit.fill),
            ),
          )),
      Column(children: [
        // Navbar(),
        Navbar(),
        Expanded(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Stack(children: [
                // Container(
                //       width: MediaQuery.of(context).size.width * 1,
                //       // height: MediaQuery.of(context).size.height * 1,
                //       // height: 300,
                //       color: Color.fromRGBO(255, 255, 255, 0.7),
                //       child: ClipRect(
                //           child: Opacity(
                //         opacity:
                //             0.3, // Adjust the opacity level (0.0 - fully transparent, 1.0 - fully opaque)
                //         child: Image.asset('assets/images/pex.jpg'),
                //       ))),
                // Mphase1(pRt, pLt),
              ])),
              // SizedBox(
              //   height: 30,
              // ),
              // MAnime2(),
              // SizedBox(
              //   height: 30,
              // ),
              // Mphase2(),
              // // ScrollAnimatedWidget(),

              // SizedBox(
              //   height: 30,
              // ),
              // MAnime2(),
              // SizedBox(
              //   height: 30,
              // ),
              // Mphase3(),
              // SizedBox(
              //   height: 30,
              // ),
              // MAnime2(),
              // SizedBox(
              //   height: 30,
              // ),
              // // MPhase4Viewer(),
              // Padding(
              //     padding: EdgeInsets.only(top: 30, bottom: 30),
              //     child: Container(
              //       height: MediaQuery.of(context).size.width * 0.8,
              //       color: Color.fromRGBO(243, 239, 239, 0.561),
              //       // child: MPhase4Viewer()
              //     )),
              // SizedBox(
              //   height: 30,
              // ),
              // MAnime2(),
              // SizedBox(
              //   height: 17,
              // ),
              // Mphase5(),
              // SizedBox(
              //   height: 30,
              // ),
              // MAnime2(),
              // SizedBox(
              //   height: 30,
              // ),
              // Mphase6(),
              // SizedBox(
              //   height: 30,
              // ),
              // MAnime2(),
              // SizedBox(
              //   height: 30,
              // ),
              // Mphase7(),
            ],
          )),
        )
      ])
    ]));
  }
}
