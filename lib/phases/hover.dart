import 'package:flutter/material.dart';

class App extends StatelessWidget {
  // Define your icon paths here
  final List<String> iconPaths = [
    'assets/images/iris.png',
    'assets/images/taskflow.png',
    'assets/images/samadhan.png',
    'assets/images/maa.png',
    'assets/images/samaksh.png',
    'assets/images/home.png',
    'assets/images/shravani.png',
    'assets/images/prathmikta.png',
    'assets/images/da.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: iconPaths.map((iconPath) {
        return IconWithHoverEffect(
          iconPath: iconPath,
          iconSize: 100.0, // Adjust the size as needed
        );
      }).toList(),
    );
  }
}

class IconWithHoverEffect extends StatefulWidget {
  final String iconPath;
  final double iconSize;

  IconWithHoverEffect({
    required this.iconPath,
    required this.iconSize,
  });

  @override
  _IconWithHoverEffectState createState() => _IconWithHoverEffectState();
}

class _IconWithHoverEffectState extends State<IconWithHoverEffect> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _mouseEnter(true),
      onExit: (_) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: _isHovered
            ? Matrix4.diagonal3Values(1.2, 1.2, -0.01)
            : Matrix4.identity(),
        child: Container(
        width: MediaQuery.of(context).size.width * 0.025,
          child: Image.asset(
            widget.iconPath,
            width: widget.iconSize * 0.5,
            height: widget.iconSize * 0.5,
          ),
        ),
      ),
    );
  }

  void _mouseEnter(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
