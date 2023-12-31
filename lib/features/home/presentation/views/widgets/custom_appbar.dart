import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 24,right: 8,left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo,scale: 3.7,), //todo: or make hight to image = 16
         //todo: const spacer(), to make space between
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSearchView); //? navigate to it by routers
          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 23,))
   
        ],
      ),
    );
  }
}