import 'package:flutter/material.dart';



class ZoomOnScrollContainer extends StatefulWidget {
  @override
  _ZoomOnScrollContainerState createState() => _ZoomOnScrollContainerState();
}

class _ZoomOnScrollContainerState extends State<ZoomOnScrollContainer> {
  late ScrollController _scrollController;
  double _scaleFactor = 1.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          // Calculate the scale factor based on scroll offset
          _scaleFactor = 1.0 + (_scrollController.offset / 200.0); // Adjust the zoom factor here
        });
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body :Container(
            height: MediaQuery.of(context).size.height * 2,
            color : Colors.pink, // Height of the content
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: AlwaysScrollableScrollPhysics(),
              child: Center(
                child: Transform.scale(
                  scale: _scaleFactor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 400, // Adjust height as needed
                        width: 300, // Adjust width as needed
                        color: Colors.blue,
                        child: Center(
                          child:  ClipRRect(
                          child : Image.asset(
                          'assets/images/designzoom2.png',
                          fit : BoxFit.cover))
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Add more widgets here
                    ],
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
