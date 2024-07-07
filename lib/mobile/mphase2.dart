import 'package:flutter/material.dart';

class Mphase2 extends StatefulWidget {
  @override
  _Mphase2State createState() => _Mphase2State();
}

class _Mphase2State extends State<Mphase2> {
bool _isKnowMoreHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                                "A passionate team of app developers, we craft powerful tools to fuel your business. We don't just build apps, we guide you through the ever-changing digital landscape, turning your ideas into success stories.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff052659)))),
                        SizedBox(
                          height: 30,
                        ),
                        MouseRegion(
                            onHover: (event) {
                              setState(() {
                                _isKnowMoreHovered = true;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                _isKnowMoreHovered = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: _isKnowMoreHovered
                                      ? Colors.deepPurple[100]
                                      : Colors.deepPurple[200],
                                  border: Border.all(
                                      color: Colors.deepPurple, width: 3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('KNOW MORE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'roboto',
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff021024))),
                              ),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  );
  }
}
