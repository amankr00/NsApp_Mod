import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nsapps_mod/phases/anime4.dart';
import 'package:nsapps_mod/navbar/navbar.dart';
import 'package:nsapps_mod/phases/anime5.dart';
import 'package:nsapps_mod/phases/getMeApp.dart';
import 'package:nsapps_mod/phases/subs.dart';
import 'package:google_fonts/google_fonts.dart';

class Phase1 extends StatefulWidget {
  final double pRt;
  final double pLt;
  Phase1(this.pRt, this.pLt);
  @override
  _Phase1State createState() => _Phase1State(pRt, pLt);
}

// class _HoverEffectExampleState extends State<HoverEffectExample> {
//   bool _isHovering = false;
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _numberController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();

class _Phase1State extends State<Phase1> {
  final double pRt;
  final double pLt;

  _Phase1State(this.pRt, this.pLt);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // left body
        Flexible(
          flex: 3,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(pRt, 0, 0, 0),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(height:50),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      // width: 500,
                      // height: 140,
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.27,
                      // height: MediaQuery.of(context).size.height * 0.4,
                      // ${pRt}   ${MediaQuery.of(context).size.width }
                      child: Text(
                        'Create better prototypes, faster.  ',
                        style: TextStyle(
                            fontSize: 60,
                            fontFamily: 'ArchivoBlack-Regular',
                            letterSpacing: 0,
                            fontWeight: FontWeight.w100,
                            decoration: TextDecoration.none,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      )
                          .animate()
                          .fade(delay: 100.ms)
                          .slideX(begin: -5, end: 0)
                          .shake(),
                    ),
                

                  Container(
                    // width: 450,
                    // height: 120,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                        'Framer is the best prototyping tool for teams. Quickly create realistic interactive designs, share with just a link, and handoff cleanly.',
                        style : TextStyle(
                          fontSize: 20,
                          letterSpacing: 0,
                          fontFamily: ' Inter',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ))).animate().fade(delay: 100.ms).slideX(begin: -5, end: 0),
                  

                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: HoverEffectExample()
                        .animate()
                        .fade(delay: 100.ms)
                        .slideX(begin: -5, end: 0),
                  )
                ]),
          ),
        ),

        // Right Body
        Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, pLt, 0),
            child: Container(
            // color : Colors.purple,
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.7,
                child : Anime5(),
                

                // child: ClipRRect(
                //   child: Image.asset(
                //     'assets/images/copy.png',
                //     fit: BoxFit.contain,
                //   ),
                // )
                )
                // .animate()
                // .fade(duration: 500.ms)
                // .slideX(begin: 1, end: 0),
          ),
        )
      ],
    );
  }
}



