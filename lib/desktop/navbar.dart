import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 80,
        decoration: BoxDecoration(
          // color :Colors.yellow,
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(
                  137, 228, 228, 228), // Color of the bottom border
              width: 3.0, // Width of the bottom border
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // SizedBox(width: 30,),
            Container(
              width: MediaQuery.of(context).size.width * 0.18,
              // color : Colors.pink,
              child: RichText(
                text: TextSpan(
                  text: 'NS Apps Innovations',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'lato',
                    letterSpacing: 0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
