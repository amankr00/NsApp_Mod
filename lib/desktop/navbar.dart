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
            Container(
            width: MediaQuery.of(context).size.width * 0.117,
            // color : Colors.pink,
              child: Text(
                'NS APPS INNOVATIONS',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Rubik',
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            
          ],
        ));
  }
}
