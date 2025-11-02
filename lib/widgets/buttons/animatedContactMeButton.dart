import 'package:flutter/material.dart';
import 'package:flutter_resume/colors.dart';
import 'package:flutter_resume/widgets/buttons/contactMeButton.dart';

class AnimatedContactMeButton extends StatefulWidget {
  final String title;
  final String link;
  final String description;
  final IconData iconData;
  final double tiltAngle;

  const AnimatedContactMeButton({
    Key? key,
    required this.title,
    required this.link,
    required this.description,
    required this.iconData,
    this.tiltAngle = 0.0, // Default to no tilt
  }) : super(key: key);

  @override
  State<AnimatedContactMeButton> createState() => _AnimatedContactMeButtonState();
}

class _AnimatedContactMeButtonState extends State<AnimatedContactMeButton> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _tiltAnimation;

  @override
  void initState() {
    super.initState();
    // 1. A single controller for this one widget
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300), // Faster duration
      vsync: this,
    );

    // 2. The color animation
    _colorAnimation = ColorTween(
      begin: white, // Or your initial color
      end: green,   // Or your hover color
    ).animate(_controller);

    // 3. The tilt animation, using the 'tiltAngle' from the widget
    _tiltAnimation = Tween<double>(
      begin: 0.0,
      end: widget.tiltAngle,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // This hover handler now only controls THIS widget's controller
  void _handleHover(bool isHovered) {
    if (isHovered) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: AnimatedBuilder(
        animation: _controller, // Listen to the one local controller
        builder: (context, child) {
          return Transform.rotate(
            angle: _tiltAnimation.value, // Use the tilt animation
            child: ContactMeButton(
              title: widget.title,
              link: widget.link,
              description: widget.description,
              icon: Icon(
                widget.iconData,
                size: 32,
                color: _colorAnimation.value, // Use the color animation
              ),
            ),
          );
        },
      ),
    );
  }
}