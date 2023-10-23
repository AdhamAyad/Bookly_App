import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slideingAnimation,
  });

  final Animation<Offset> slideingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder( //todo: AnimatedBuilder → to rebild this widget only when animat
      animation: slideingAnimation,
      builder:(context ,_) => SlideTransition( //! that make animation for widget
      
       position: slideingAnimation , //? take the object of animation that we make to do the animation on this widget
        child: const Text('Read A Free Books!',style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center //? to put it in center
        ,),
      ),
    );
  }
}

