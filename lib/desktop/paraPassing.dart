import 'package:flutter/material.dart';

class para extends StatefulWidget {
  final String initialText;

  para({required this.initialText});

  @override
  _paraState createState() => _paraState();
}

class _paraState extends State<para> {
  String text = '';

  @override
  void initState() {
    super.initState();
    text = widget.initialText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 200,
    // height: 200,
      child: Text(text,
      style : TextStyle(
      fontSize: 20,
      decoration: TextDecoration.none)),
      
    );
  }
}


class zero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: para(initialText: 'Hello, Starkiee!'),
    );
  }
}
