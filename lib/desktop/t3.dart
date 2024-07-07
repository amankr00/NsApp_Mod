
import 'package:flutter/material.dart';

class ScrollZoomPage extends StatefulWidget {
  @override
  _ScrollZoomPageState createState() => _ScrollZoomPageState();
}

class _ScrollZoomPageState extends State<ScrollZoomPage> {
  final ScrollController _scrollController = ScrollController();
  double _scale = 1.0;

  void _onScroll() {
    final double offset = _scrollController.position.pixels;
    setState(() {
      _scale = (1.0 + (offset / 15500.0)).clamp(1.0, 1.5);  // Clamp the scale value between 1.0 and 1.5
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 2.8,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Transform.scale(
              scale: _scale,
              child: Image.network(
                'assets/images/clu.jpg',
                fit: BoxFit.cover,
                height: 300,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
