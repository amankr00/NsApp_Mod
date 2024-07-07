
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ArrRt extends StatefulWidget {
  const ArrRt({super.key});

  @override
  State<ArrRt> createState() => _ArrRtState();
}

class _ArrRtState extends State<ArrRt> {
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
    // width: MediaQuery.of(context).size.width * 0.6 ,
    // width: 20,
    // height: 20,
        child: LottieBuilder.asset(
      'assets/animations/arr.json',
      // controller: _controller,
      width: 20,
      height: 20,
      repeat: true,
      fit: BoxFit.cover,
    ));
  }
}
