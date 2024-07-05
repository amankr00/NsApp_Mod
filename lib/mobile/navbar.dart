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
          // color: Color(0xff5A258A),
          color: Color(0xff021024),
          border: Border(
            // bottom: BorderSide(
            //   color: Color.fromARGB(136, 255, 255, 255), // Color of the bottom border
            //   width: 3.0, // Width of the bottom border
            // ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NS APPS INNOVATIONS',
              style: TextStyle(
                  fontSize: 19,
                  fontFamily: 'roboto',
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ))]);
}
}