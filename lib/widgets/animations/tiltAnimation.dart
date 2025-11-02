import 'package:flutter/material.dart';

class TiltedAnimationWidget extends StatefulWidget {
  final Widget child;
  final double tiltAngle;

  const TiltedAnimationWidget({
    Key? key,
    required this.child,
    this.tiltAngle = 0.0, // Default to no tilt
  }) : super(key: key);

  @override
  _TiltedAnimationWidgetState createState() => _TiltedAnimationWidgetState();
}

class _TiltedAnimationWidgetState extends State<TiltedAnimationWidget>
    with SingleTickerProviderStateMixin {
  // <-- We only need one controller

  late AnimationController _controller;
  late Animation<double> _tiltAnimation;

  @override
  void initState() {
    super.initState();
    // 1. A single controller for this one widget
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300), // Faster duration
      vsync: this,
    );

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
    // This is the exact same structure you had, but now
    // it's self-contained in its own widget.
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: AnimatedBuilder(
        animation: _controller, // Listen to the one local controller
        builder: (context, child) {
          return Transform.rotate(
            angle: _tiltAnimation.value, // Use the tilt animation
            child: widget.child,
          );
        },
      ),
    );
  }
}
