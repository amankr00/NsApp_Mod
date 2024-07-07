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
          top: 120,
          child: Opacity(
              opacity: 0.9,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.75,
                  alignment: Alignment.center,
                  // color: Color.fromARGB(255, 174, 39, 39),
                  child: Stack(
                  alignment: Alignment.center, 
                  children: [
                  Positioned(
                  top : 40,
                  child: 
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
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
                          height: 25,
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
                        top: 360,
                        right : 280,
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
                              'AR/VR',
                              style: TextStyle(
                                  color: Color(0xff021024),
                                  fontFamily: 'roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                        top: 360,
                        left : 200,
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                        top: 430,
                        left : 47,
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                        top: 430,
                        left : 180,
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                        top: 500,
                        right : 200,
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
                              'Visual Studio Code Editor',
                              style: TextStyle(
                                  color: Color(0xff021024),
                                  fontFamily: 'roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )))),
                    Positioned(
                        top: 500,
                        left :280,
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
                        top: 570,
                        left :130,
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )))),
                   
                   
                   
                  ])))),
    ]);
  }
}
