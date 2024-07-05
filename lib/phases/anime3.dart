import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Anime3 extends StatefulWidget {
  const Anime3({super.key});

  @override
  State<Anime3> createState() => _Anime3State();
}

class _Anime3State extends State<Anime3> {
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
    // width: MediaQuery.of(context).size.width * 1,
    width: 500,
    height :500,
        child: LottieBuilder.asset(
      'assets/animations/party.json',
      // controller: _controller,
      // width: 20,
      // height: 20,
      repeat: false,
      fit: BoxFit.contain,
    ));
  }
}
