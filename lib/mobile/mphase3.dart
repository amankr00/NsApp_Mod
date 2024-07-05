import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsapps_mod/phases/anime2.dart';

class Mphase3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.width * 1.3,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
      border: Border.all(
          color: Color(0xffFAE60F), // Border color
          width: 3,           // Border width
        ),
          color: Color.fromARGB(54, 231, 185, 78),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 40,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  // color: Colors.purple,
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Allocating resources and ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'budgeting tasks.',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 231, 11),
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]))),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Anime2(),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              // color : Colors.greenAccent,
                              child: Text(
                                'Develop timelines and milestones, allocate resources, assign tasks, estimate costs, and create budgets to ensure efficient project management.',
                                style: TextStyle(
                                  // decoration: TextDecoration.lineThrough,
                                  decoration: TextDecoration.none,
                                  // color: Colors.black,
                                  color : Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.normal,
                                  // decoration: TextDecoration.none,/
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                    ]),
              )
            ]),
          ),
          Container(
              // color: Colors.purple,
              // width: MediaQuery.of(context).size.width * 0.9,
              // height: MediaQuery.of(context).size.height * 0.4,
              child: ClipRect(
                  child: Image.asset(
                      // width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height * 0.6,
                      'assets/images/lowlogo2.png',
                      fit: BoxFit.cover))),
        ],
      ),
    );
  }
}
