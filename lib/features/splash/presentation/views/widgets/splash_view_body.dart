import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch, //? to take all width that image can to take
      children: [
        Image.asset(AssetsData.logo),
        
        const SizedBox(height: 4,),

       const Text('Read A Free Books',
       textAlign: TextAlign.center //? to put it in center
       ,),
      ],
    );
  }
}