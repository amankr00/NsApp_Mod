import 'package:flutter/material.dart';
class Navbar extends StatefulWidget{
@override
_NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar>{
@override
Widget build(BuildContext context) {
return Column(
children : [
Container(
        height: 80,
        decoration: BoxDecoration(
          // color: Colors.yellow,
          color: Color(0xff021024),
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(136, 255, 255, 255), // Color of the bottom border
              width: 3.0, // Width of the bottom border
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             RichText(
                text: TextSpan(
                  text: 'NS Apps Innovations',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'inter',
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
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
          ],
        ))]);
}
}