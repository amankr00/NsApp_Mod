import 'package:flutter/material.dart';

class Mphase6 extends StatefulWidget {
  @override
  _Mphase6State createState() => _Mphase6State();
}

class _Mphase6State extends State<Mphase6> {
  bool _isKnowMoreHovered = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
    alignment: Alignment.center, children: [
      Container(
          // color: Color.fromARGB(255, 132, 190, 39),
          height: MediaQuery.of(context).size.height ,
          width: MediaQuery.of(context).size.width * 1.3,
          child: ClipRRect(
              child: Image.asset('assets/images/designzoom2.png',
                  fit: BoxFit.cover))),
      Positioned(
          top:  MediaQuery.of(context).size.height * 0.1,
          child: Opacity(
              opacity: 0.9,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.95,
                  alignment: Alignment.center,
                  // color: Color.fromARGB(255, 174, 39, 39),
                  child: Stack(
                  alignment: Alignment.center, 
                  children: [
                  Positioned(
                  top :  MediaQuery.of(context).size.width * 0.05,
                  child: 
                    Column(
                      children: [
                        SizedBox(
                          height:  MediaQuery.of(context).size.width * 0.1,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.7,
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
                          height:  MediaQuery.of(context).size.width * 0.05,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            // color : Colors.purple,
                            alignment: Alignment.center,
                            child: Text(
                                'At NS APPS INNOVATIONS LIMITED, we build your digital product idea from the ground up and make it an investors’ favorite. A journey that starts and is embedded with emerging technologies.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff052659)))),
                      ],
                    ),
                    ),

                    Positioned(
                        top:  MediaQuery.of(context).size.height * 0.42,
                        left :  MediaQuery.of(context).size.width * 0.09,
                        child : Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            // width: MediaQuery.of(context).size.width * 0.2,

                        child: Chip(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(color: Colors.black),
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
                            label: Padding(padding: EdgeInsets.all(5),
                            child:  Container(
                            // width: MediaQuery.of(context).size.width * 0.1 ,
                              child: Text(
                                'AR/VR',
                                style: TextStyle(
                                    color: Color(0xff021024),
                                    fontFamily: 'roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))))),
                    Positioned(
                            top:  MediaQuery.of(context).size.height * 0.42,
                        right :  MediaQuery.of(context).size.width * 0.09,
                        child: Chip(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(color: Colors.black),
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
                            label: Padding(padding: EdgeInsets.all(5),
                            child:  Text(
                              'Android Studio',
                              style: TextStyle(
                                  color: Color(0xff021024),
                                  fontFamily: 'roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                       top:  MediaQuery.of(context).size.height * 0.49,
                        left :  MediaQuery.of(context).size.width * 0.048,
                        child: Chip(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(color: Colors.black),
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
                            label: Padding(padding: EdgeInsets.all(5),
                            child:  Text(
                              'Flutter',
                              style: TextStyle(
                                  color: Color(0xff021024),
                                  fontFamily: 'roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                         top:  MediaQuery.of(context).size.height * 0.49,
                        right :  MediaQuery.of(context).size.width * 0.048,
                        child: Chip(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(color: Colors.black),
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
                            label: Padding(padding: EdgeInsets.all(5),
                            child:  Text(
                              'Artificial Intelligence',
                              style: TextStyle(
                                  color: Color(0xff021024),
                                  fontFamily: 'roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                         top:  MediaQuery.of(context).size.height * 0.56,
                        left :  MediaQuery.of(context).size.width * 0.048,
                        child: Chip(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(color: Colors.black),
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
                            label: Padding(padding: EdgeInsets.all(5),
                            child:  Text(
                              'Visual Studio Code',
                              style: TextStyle(
                                  color: Color(0xff021024),
                                  fontFamily: 'roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                          top:  MediaQuery.of(context).size.height * 0.56,
                        right :  MediaQuery.of(context).size.width * 0.048,
                        child: Chip(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(color: Colors.black),
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
                            label: Padding(padding: EdgeInsets.all(5),
                            child:  Text(
                              'Github Tool',
                              style: TextStyle(
                                  color: Color(0xff021024),
                                  fontFamily: 'roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                           top:  MediaQuery.of(context).size.height * 0.63,
                        left :  MediaQuery.of(context).size.width * 0.3,
                        child: Chip(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(color: Colors.black),
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
                            label: Padding(padding: EdgeInsets.all(5),
                            child:  Text(
                              'Java Language',
                              style: TextStyle(
                                  color: Color(0xff021024),
                                  fontFamily: 'roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )))),
                   
                   
                   
                  ])))),
    ]);
  }
}
