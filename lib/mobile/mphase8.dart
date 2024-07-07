import 'package:flutter/material.dart';

class Mphase8 extends StatefulWidget {
  @override
  _Mphase8State createState() => _Mphase8State();
}

class _Mphase8State extends State<Mphase8> {
  bool _isKnowMoreHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.58,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
            color: Color(0xffFCECFB), borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                      color: Color(0xffFEDEFD),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                    // color : const Color.fromARGB(255, 223, 178, 231),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text('BRIEF',
                                    style: TextStyle(
                                        color: Color(0xff052659),
                                        fontFamily: 'roboto',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                    // color : const Color.fromARGB(255, 223, 178, 231),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                    'DoughFi and us revolutionized high-risk business banking with a Stellar Network blockchain platform, featuring P2P merchant transfers, QR code lookups, and live chat support, simplifying transactions and enhancing user satisfaction.',
                                    style: TextStyle(
                                        color: Color(0xff052659),
                                        fontFamily: 'roboto',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal))),
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
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            // color : const Color.fromARGB(255, 223, 178, 231),
                            borderRadius: BorderRadius.circular(30)),
                        child: Text('TECH STACK',
                            style: TextStyle(
                                color: Color(0xff052659),
                                fontFamily: 'roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                            color: const Color.fromARGB(255, 223, 178, 231),
                            borderRadius: BorderRadius.circular(30)),
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
                            color: const Color.fromARGB(255, 223, 178, 231),
                            borderRadius: BorderRadius.circular(30)),
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
                            color: const Color.fromARGB(255, 223, 178, 231),
                            borderRadius: BorderRadius.circular(30)),
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
                            color: const Color.fromARGB(255, 223, 178, 231),
                            borderRadius: BorderRadius.circular(30)),
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
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      width: 1.5)),
                              child: Text('Android',
                                  style: TextStyle(
                                      color: Color(0xff052659),
                                      fontFamily: 'roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      width: 1.5)),
                              child: Text('VS CODE',
                                  style: TextStyle(
                                      color: Color(0xff052659),
                                      fontFamily: 'roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      width: 1.5)),
                              child: Text('Flutter',
                                  style: TextStyle(
                                      color: Color(0xff052659),
                                      fontFamily: 'roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ));
  }
}
