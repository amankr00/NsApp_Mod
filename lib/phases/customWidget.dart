import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        'Hello, Custom Widget!',
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }
}
