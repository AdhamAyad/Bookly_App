import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_logo.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}
//? with SingleTickerProviderStateMixin → that give the correct time for animation
class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController; //? late → give it value after a few time , animation controller → that give time to animation from 0 to 1
  late Animation<Offset> slideingTextAnimation; //? make object of animation and give it name of animation
  late Animation<Offset> slideingLogoAnimation; //?
 //! SingleTickerProviderStateMixin → handle time of any thing what we make same as clock

  @override
  void initState() { //? initState → it runs before this widget runs
   
    super.initState();
    initSlidingAnimation(); //? to run text animation
    initSlidingLogo(); //? to run logo animation
    navigateToHomeAfter2Sec(); //? go to home page after 2 sec
  }

  

  @override
  void dispose() { //! it run after this stateful widget killed  
    super.dispose();
    animationController.dispose(); //? to good resources and kill this controller after using it
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch, //? to take all width that image can to take
      children: [

        SlidingLogo(slideingLogoAnimation: slideingLogoAnimation), //? give it the animation
        
        const SizedBox(height: 4,),

       SlidingText(slideingAnimation: slideingTextAnimation),
      ],
    );
  }








  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration:const Duration(seconds: 1)); //? contriller that control animation time
    slideingTextAnimation = Tween<Offset>(begin:const Offset(0,2) ,end: Offset.zero).animate(animationController); //? animation what to do
    animationController.forward(); //? to run animation
    // slideingAnimation.addListener(() {
    //   setState(() { //todo: we use it when we dont use animated builder
        
    //   });
    //  });
  }

   void initSlidingLogo() {
    slideingLogoAnimation = Tween<Offset>(begin:const Offset(1,0) ,end: Offset.zero).animate(animationController); //? animation what to do
    animationController.forward(); //? to run animation
  }

  void navigateToHomeAfter2Sec() {
    Future.delayed(const Duration(seconds: 2) , (){ //? Future.delayed(const Duration(seconds: 4) → this code will run after widget built with 4 sec
    // Get.to(()=>const HomeView(), transition: Transition.fade, duration: kTransitionDuration);//! after two sec navigate with transition 
    GoRouter.of(context).push(AppRouter.kHomeView); //? navigate to it by routers
    //! get.to → enable me to navigat to another screen fast and with transition
    });
  }
}



