import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _scale = 1.0; // Initial scale value
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      // Adjust scale based on scroll direction and magnitude
      _scale = 1.0 - _scrollController.offset / 1000;
      if (_scale < 0.5) {
        _scale = 0.5; // Limit minimum scale
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Background image with zoom effect
          Container(
            height: 400, // Adjust the height of the image
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Transform.scale(
                    scale: _scale,
                    child: Image.asset(
                      'assets/images/designzoom2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Scrollable content
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              physics: BouncingScrollPhysics(),
              itemCount: 50, // Example content count
              itemBuilder: (context, index) {
                return Container(
                  height: 100, // Example content height
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
