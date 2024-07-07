import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Anime extends StatefulWidget {
  const Anime({super.key});

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
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
        child: LottieBuilder.asset(
      'assets/animations/an.json',
      // controller: _controller,
      width: 50,
      height: 50,
      repeat: true,
      fit: BoxFit.cover,
    ));
  }
}
