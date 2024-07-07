import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsapps_mod/desktop/scrollview.dart';

class phase7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 980,
      // height: MediaQuery.of(context).size.height * 0.93,
      width: MediaQuery.of(context).size.width * 1.00,
      color: Colors.blue,

      child: Column(
        children: [

          Container(
                                // color :Colors.purple,
                                child: ClipRect(
                              child: Image.asset(
                                'assets/images/cup.png',
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                              ),
                            )),


          // SizedBox(
          //   height: 90,
          // ),
          Container(
            // height: MediaQuery.of(context).size.height * 0.,
            width: MediaQuery.of(context).size.width * 0.29,
            child: Text('Our Apps',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Color.fromARGB(255, 0, 0, 0))),
          ),

          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.38,
            child: ContainerList3()),
          Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.38,
            child: ContainerList4()),
          ],)
     
        ],
      ),
    );
  }
}
