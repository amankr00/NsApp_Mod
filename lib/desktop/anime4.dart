import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Anime4 extends StatefulWidget {
  const Anime4({super.key});

  @override
  State<Anime4> createState() => _Anime4State();
}

class _Anime4State extends State<Anime4> {
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
    // width: MediaQuery.of(context).size.width * 0.35,
    width: 700,
    height :620,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(500)),
        child: LottieBuilder.asset(
      'assets/animations/main3.json',
      // controller: _controller,
      // width: 200,
      // height: 200,
      repeat: true,
      fit: BoxFit.cover,
    ));
  }
}
