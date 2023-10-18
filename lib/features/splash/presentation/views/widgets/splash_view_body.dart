import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController; //? late → give it value after a few time , animation controller → that give time to animation from 0 to 1
  late Animation<Offset> slideingAnimation; //? make object of animation and give it name of animation
 //! SingleTickerProviderStateMixin → handle time of any thing what we make same as clock
  @override
  void initState() { //? initState → it runs before this widget runs
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration:const Duration(seconds: 1)); //? contriller that control animation time
    slideingAnimation = Tween<Offset>(begin:const Offset(0,2) ,end: Offset.zero).animate(animationController); //? animation what to do
    animationController.forward(); //? to run animation
    // slideingAnimation.addListener(() {
    //   setState(() { //todo: we use it when we dont use animated builder
        
    //   });
    //  });
  }

  @override
  void dispose() { //! it run after this stateful widget killed
    // TODO: implement dispose
    super.dispose();
    animationController.dispose(); //? to good resources
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch, //? to take all width that image can to take
      children: [
        Image.asset(AssetsData.logo),
        
        const SizedBox(height: 4,),

       SlidingText(slideingAnimation: slideingAnimation),
      ],
    );
  }
}

