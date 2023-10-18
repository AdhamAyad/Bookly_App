import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    required this.slideingLogoAnimation,
  });

  final Animation<Offset> slideingLogoAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideingLogoAnimation,
      builder:(context,_) => SlideTransition(
        position: slideingLogoAnimation,
        child: Image.asset(AssetsData.logo)),
    );
  }
}