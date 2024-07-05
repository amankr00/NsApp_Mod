import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsapps_mod/phases/anime.dart';
import 'package:nsapps_mod/phases/t.dart';

class Mphase7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 830,
      // height: MediaQuery.of(context).size.height * 0.93,
      width: MediaQuery.of(context).size.width * 1.00,
      color: Colors.blue,

      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            // height: MediaQuery.of(context).size.height * 0.,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text('Get your own app today',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: const Color.fromARGB(255, 255, 255, 255))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 248, 248),
                borderRadius: BorderRadius.circular(50),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Sign up for free ',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 108, 218),
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  child: Anime(),
                  // fit : BoxFit.contain,
                ),
              ])),
          SizedBox(
            height: 40,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.7,
              // height: MediaQuery.of(context).size.height * 0.51,
              child: ClipRect(
                  child: Image.asset(
                'assets/images/big.png',
                fit: BoxFit.contain,
              ))),
          // Cal(),
        ],
      ),
    );
  }
}
