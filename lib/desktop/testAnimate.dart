import 'package:flutter/material.dart';

class AnimatedTextExample extends StatefulWidget {
  @override
  _AnimatedTextExampleState createState() => _AnimatedTextExampleState();
}

class _AnimatedTextExampleState extends State<AnimatedTextExample>
  with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    

    
    _animation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context ) {
    return Container(
    width: 100,
        child: SlideTransition(
          position: _animation,
          child: Text(
            'Trusted by some of the best in the business',
            style: TextStyle(
              fontSize: 17,
              letterSpacing: 0,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
              color: Color.fromARGB(235, 101, 100, 100),
            ),
          ),
        ),
      );
  }
}
