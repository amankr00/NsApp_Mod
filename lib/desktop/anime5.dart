import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Anime5 extends StatefulWidget {
  const Anime5({super.key});

  @override
  State<Anime5> createState() => _Anime5State();
}

class _Anime5State extends State<Anime5> {
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
    width: MediaQuery.of(context).size.width * 0.6 ,
    // width: 20,
    // height: 20,
        child: LottieBuilder.asset(
      'assets/animations/app_scroll.json',
      // controller: _controller,
      // width: 20,
      // height: 20,
      repeat: true,
      fit: BoxFit.cover,
    ));
  }
}
