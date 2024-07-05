import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';


// class SlidingContainer extends StatefulWidget {
//   @override
//   _SlidingContainerState createState() => _SlidingContainerState();
// }

// class _SlidingContainerState extends State<SlidingContainer> {

class Mphase2 extends StatefulWidget {
  // get context => null;
  _Mphase2State createState() => _Mphase2State();
}

class _Mphase2State extends State<Mphase2> {
  bool _visible = true;


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        _visible = !_visible;
      });
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child : AnimatedContainer(
      height: MediaQuery.of(context).size.width * 1.3,
      width: MediaQuery.of(context).size.width * 0.85,
      duration: Duration(seconds: 3),
      curve: Curves.easeInOut,
      // transform: Matrix4.translationValues(
      //   _visible
      //       ? MediaQuery.of(context).size.width * -0.5
      //       : 0, // x-axis translation
      //   0, // y-axis translation, adjust if needed
      //   0, // z-axis translation, adjust if needed
      // ),
      decoration: BoxDecoration(
          // color: Color.fromARGB(255, 10, 185, 185),
          border: Border.all(
            color: Color(0xffAFE313), // Border color
            width: 3, // Border width
          ),
          color: Color.fromARGB(58, 208, 129, 222),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        // Purple image and Right - side text
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 150, 0),
          // child:

          Container(
              width: MediaQuery.of(context).size.width * 1,
              // color: Colors.black,
              alignment: Alignment.center,
              child: ClipRect(
                  child: Image.asset(
                'assets/images/sideloook.png',
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.fill,
              ))),

          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              // color: Colors.black26,
              // width: 450,
              // height: 150,
              // child : Text('The Insert Menu is your toolbox.',

              // style: TextStyle(
              // fontSize: 50,
              // letterSpacing: 0,
              // fontWeight: FontWeight.w900,
              // decoration: TextDecoration.none,))
              // )

              SizedBox(
                height: 10,
              ),

              Container(
                  // width: 450,
                  width: MediaQuery.of(context).size.width * 0.7,
                  // color: Colors.black12,

                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Analyzing ',
                              style: TextStyle(
                                fontSize: 50,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                          TextSpan(
                              text: 'client needs',
                              style: TextStyle(
                                fontSize: 50,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Color(0xffAFE313),
                              )),
                          TextSpan(
                              text: ' for projects.',
                              style: TextStyle(
                                fontSize: 50,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Color.fromARGB(255, 254, 254, 254),
                              ))
                        ],
                      ),
                    )
                        // .animate()
                        // .fade(duration: 2000.ms)
                        // .slideX(begin: 5, end: 0)
                        ,
                  )),

              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Container(
                    // width: 550,
                    width: MediaQuery.of(context).size.width * 0.7,
                    //  height: MediaQuery.of(context).size.height * 0.7,
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    // height: MediaQuery.of(context).size.height * 0.3,
                                    child: Text(
                                        "Conduct stakeholder interviews and surveys to identify client goals, pain points, and requirements for a clear project scope statement.",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none,
                                          // color: Color.fromARGB(255, 0, 0, 0),
                                          color : Color.fromARGB(255, 255, 255, 255)
                                        )))
                              ]),
                        ]),
                  ))
            ],
          ),
        ],
      ),
    ));
  }
}
