import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Anime2 extends StatefulWidget {
  const Anime2({super.key});

  @override
  State<Anime2> createState() => _Anime2State();
}

class _Anime2State extends State<Anime2> {
  // late final AnimationController _controller;
  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //       vsync: this, duration: Duration(seconds: 7)); // _controller.forward();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  Widget _buildUI() {
    return Container(
    // width: 20,
    // height: 20,
        child: LottieBuilder.asset(
      'assets/animations/point.json',
      // controller: _controller,
      width: 20,
      height: 20,
      repeat: true,
      fit: BoxFit.contain,
    ));
  }
}
