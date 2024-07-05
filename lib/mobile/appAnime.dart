import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MAnime1 extends StatefulWidget {
  const MAnime1({super.key});

  @override
  State<MAnime1> createState() => _MAnime1State();
}

class _MAnime1State extends State<MAnime1> {
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
    // color: Colors.blue,
    // width: 20,
    // height: 20,
        child: LottieBuilder.asset(
      'assets/animations/app_scroll.json',
      // controller: _controller,
      // width: 20,
      // height: 20,
      repeat: true,
      fit: BoxFit.fitHeight,
      
    ));
  }
}
