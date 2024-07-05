import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class MAnime2 extends StatefulWidget {
  const MAnime2({super.key});

  @override
  State<MAnime2> createState() => _MAnime2State();
}

class _MAnime2State extends State<MAnime2>  with SingleTickerProviderStateMixin{

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 3000));
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  Widget _buildUI() {
    return Container(
      child: LottieBuilder.asset(
      'assets/animations/line2.json',
      // repeat: true,
      controller: _controller,
      fit: BoxFit.contain,
    ));
  }
}
