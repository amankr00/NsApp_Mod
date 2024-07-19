import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nsapps_mod/desktop/anime5.dart';
import 'package:nsapps_mod/desktop/getMeApp.dart';

class Phase1 extends StatefulWidget {
  final double pRt;
  final double pLt;
  final bool hovMD;
  Phase1(this.pRt, this.pLt , this.hovMD);
  @override
  _Phase1State createState() => _Phase1State(pRt, pLt , hovMD);
}

// class _HoverEffectExampleState extends State<HoverEffectExample> {
//   bool _isHovering = false;
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _numberController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();

class _Phase1State extends State<Phase1> {
  final double pRt;
  final double pLt;
  final bool hovMD;

    void startTimer() {
      const oneSec = const Duration(seconds: 1);
  }

  _Phase1State(this.pRt, this.pLt , this.hovMD);
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
                      // color : Colors.pink,
                      width: MediaQuery.of(context).size.width * 0.36,
                      // ${pRt}   ${MediaQuery.of(context).size.width }
                      child: RichText(
                    text: TextSpan (
                      children: [
                        TextSpan(
                          text: 'Think an',
                          style : TextStyle(
                          fontSize: 45,
                          letterSpacing: 0,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(203, 0, 0, 0),
                        )
                        ),
                        TextSpan(
                          text: ' app,',
                          style : TextStyle(
                          fontSize: 45,
                          fontFamily: 'poppins',
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.blue,
                        )
                        ),
                        TextSpan(
                          text: ' we\n',
                          style : TextStyle(
                          fontSize: 45,
                          letterSpacing: 0,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(203, 0, 0, 0),
                        )
                        ),
                        TextSpan(
                          text: 'code',
                          style : TextStyle(
                          fontSize: 45,
                          letterSpacing: 0,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(203, 0, 0, 0),
                        )
                        ),
                        TextSpan(
                          text: ' your imagination.',
                          style : TextStyle(
                          fontSize: 45,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(203, 0, 0, 0),
                        )
                        )
                      ],
                    ),
                  )
                      )
                          .animate()
                          .fade(delay: 100.ms)
                          .slideX(begin: -5, end: 0)
                          .shake(),
                    ),

                    SizedBox(
                    height: 15,),
                

                  Container(
                  
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                        'Turning your vision into innovative apps, we create custom solutions that drive success and faster growth in the digital realm.',
                        style : TextStyle(
                          fontSize: 20,
                          letterSpacing: 0,
                          fontFamily: ' Inter',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ))).animate().fade(delay: 100.ms).slideX(begin: -5, end: 0),
                  

                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: HoverEffectExample(hovMD)
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



