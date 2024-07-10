import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

import 'package:nsapps_mod/automaticScroll.dart';

class MyLot extends StatefulWidget {
  @override
  _MyLotState createState() => _MyLotState();
}

class _MyLotState extends State<MyLot> {
  int? isHovered;

  // void showDetails() {

  // }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 30,
      ),
      Text(
        'Zila Parisad Nalanda',
        style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 30,
            decoration: TextDecoration.none),
      ),
      Text(
        'From Vision to Success',
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 50,
          decoration: TextDecoration.none,
        ),
      ),
      Expanded(
          child: SingleChildScrollView(
              child: Container(
                  // color:Color(0xfffbfbfb),
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.purple[100],
                  child: Transform.scale(
                      scale: 0.95,
                      child: Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  cardLayout(
                                      0,
                                      240,
                                      true,
                                      'Scheme Details',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffFBCBC9)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_right_sharp,
                                      size: 50,
                                      color: Color(0xFF5fbcbc9),
                                    ),
                                  ),
                                  cardLayout(
                                      1,
                                      240,
                                      true,
                                      'NOC Letters',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffB3CCDC)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_right_sharp,
                                      size: 50,
                                      color: Color(0xffB3CCDC),
                                    ),
                                  ),
                                  cardLayout(
                                      2,
                                      240,
                                      true,
                                      'DPRO Approval',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffCCDDD1)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_right_sharp,
                                      size: 50,
                                      color: Color(0xffCCDDD1),
                                    ),
                                  ),
                                  cardLayout(
                                      3,
                                      240,
                                      true,
                                      'DDC Approval',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffFED8A9)),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 100),
                                    child: Container(
                                        // color:Color.fromARGB(255, 215, 212, 178),
                                        child: Transform.rotate(
                                      angle:
                                          math.pi / 2, // 90 degrees in radians
                                      child: Icon(
                                        Icons.arrow_circle_right_sharp,
                                        size: 50,
                                        color: Color(0xffFED8A9),
                                      ),
                                    )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  cardLayout(
                                      7,
                                      240,
                                      false,
                                      'Ex Engg MB, Bills',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color.fromARGB(255, 148, 174, 188)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_left_sharp,
                                      size: 50,
                                      color: Color(0xffB4CBDB),
                                    ),
                                  ),
                                  cardLayout(
                                      6,
                                      240,
                                      false,
                                      'MB Approved by TA',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffB4CBDB)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_left_sharp,
                                      size: 50,
                                      color: Color(0xffFED8A9),
                                    ),
                                  ),
                                  cardLayout(
                                      5,
                                      240,
                                      true,
                                      'TA Monitoring',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffFED8A9)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_left_sharp,
                                      size: 50,
                                      color: Color(0xffFDCAC9),
                                    ),
                                  ),
                                  cardLayout(
                                      4,
                                      240,
                                      true,
                                      'Ex Engg Work Order',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffFDCAC9)),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 90),
                                    child: Container(
                                        // color:Color.fromARGB(255, 215, 212, 178),
                                        child: Transform.rotate(
                                      angle:
                                          math.pi / 2, // 90 degrees in radians
                                      child: Icon(
                                        Icons.arrow_circle_right_sharp,
                                        size: 50,
                                        color: Colors.blueGrey,
                                      ),
                                    )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  cardLayout(
                                      8,
                                      240,
                                      false,
                                      'Inspection by Ex Engg',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffFEB19B)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_right_sharp,
                                      size: 50,
                                      color: Color(0xffFEB19B),
                                    ),
                                  ),
                                  cardLayout(
                                      9,
                                      240,
                                      false,
                                      'Accountant File Put up',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffFED8A9)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_right_sharp,
                                      size: 50,
                                      color: Color(0xFF5F6368),
                                    ),
                                  ),
                                  cardLayout(
                                      10,
                                      240,
                                      false,
                                      'DDC Final Approval',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffFED8A9)),
                                  Container(
                                    // color:Color.fromARGB(255, 215, 212, 178),
                                    child: Icon(
                                      Icons.arrow_circle_right_sharp,
                                      size: 50,
                                      color: Color(0xFF5F6368),
                                    ),
                                  ),
                                  cardLayout(
                                      11,
                                      240,
                                      false,
                                      'Scheme Completed',
                                      'Click Here to download PDF',
                                      "Lorem Ipsum is simply dummy text of the printi",
                                      Color(0xffFED8A9)),
                                ],
                              )
                            ],
                          ))))))
    ]);
  }

  GestureDetector cardLayout(int index, double wid, bool tick, String t1,
      String t2, String comment, Color color) {
    return GestureDetector(
      onTap: () {
        if (index == 1) {
          // Container(child:Text('Heelo'));
          showDialog(
            context: context,
            // useRootNavigator: false,
            // Navigator.pop(context, true),
            builder: (BuildContext context) {
              return Container(
                  // color:Colors.white,
                  child: PDFdownload(context, t1));
            },
          );
        }
      },
      child: MouseRegion(
          onEnter: (_) {
            setState(() {
              isHovered = index;
            });
          },
          onExit: (_) {
            setState(() {
              isHovered = null;
            });
          },
          child: Container(
              width: wid,
              // height: wid*1.5,
              decoration: BoxDecoration(
                // color: isHovered ? Colors.pink : Colors.purple[600],
                color: Color(0xfffbfbfb),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: isHovered == index
                        ? Colors.black.withOpacity(0.5)
                        : Colors.white,
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //image
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 5, color: color)),
                      child: tick
                          ? Image.asset('assets/images/doneTick.png',
                              fit: BoxFit.cover)
                          : Image.asset('assets/images/unTick.png',
                              fit: BoxFit.cover)),
                  SizedBox(
                    height: 10,
                  ),

                 
                    Container(
                      width: wid,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            t1,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            t2,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                

                  SizedBox(
                    height: 10,
                  ),

                  //Comment
                  Container(
                      height: 70,
                      width: wid,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: color),
                          borderRadius: BorderRadius.circular(8)
                          // color:const Color.fromARGB(255, 33, 243, 226),
                          ),
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            comment,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none),
                          ))),
                ],
              ))),
    );
  }
}

Center PDFdownload(BuildContext context, t1) {
  const IconData download_for_offline = IconData(
    0xe203,
    fontFamily: 'MaterialIcons',
  );
  return Center(
    child: Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
        // top : 0,
            child: Container(
                child: Image.asset('assets/images/cool.png',
                    fit: BoxFit.contain))),
        Positioned(
            top: 270,
            left : 420,
            child: Container(
              // color: Colors.black.withOpacity(0.5),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        t1,
                        style: TextStyle(
                            color: Color(0xfffbfbfb),
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      smallChip(download_for_offline, 'BDO'),
                      SizedBox(
                        width: 20,
                      ),
                      smallChip(download_for_offline, 'CO'),
                      SizedBox(
                        width: 20,
                      ),
                      smallChip(download_for_offline, 'PO'),
                      SizedBox(
                        width: 20,
                      ),
                      smallChip(download_for_offline, 'Ex Engineer'),
                      SizedBox(
                        width: 20,
                      ),
                      smallChip(download_for_offline, 'TA'),
                      // SizedBox(width: 20,),
                      // Container(),
                      // Container(),
                    ],
                  ),
                  SizedBox(height:80),
                  Text('Press Esc to exit',
                  style: TextStyle(
                            color: Color.fromARGB(255, 18, 39, 198),
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none),
                  )
                ],
              ),
            ))
      ],
    ),
  );
}

Container smallChip(IconData download_for_offline, String holder) {
  return Container(
      width: 150,
      height: 165,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xfffbfbfb)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              height: 60,
              width: 60,
              child:
                  Image.asset('assets/images/doneTick.png', fit: BoxFit.cover)),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Icon(
              download_for_offline,
              size: 45,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            holder,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
        ],
      ));
}
