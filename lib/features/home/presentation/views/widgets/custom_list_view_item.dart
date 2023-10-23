import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio( //! save responsive of hight and width to be good on another device
    aspectRatio: 2.6/4, //?width/hight
      child: Container(
        // height: MediaQuery.of(context).size.height * .36, //todo: use media quary to be responsive with any device
        // width: MediaQuery.of(context).size.width * .4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          //color: Colors.red, //? to test code
          image:const DecorationImage(image: AssetImage(AssetsData.testImage,),
          fit: BoxFit.fill //? to fill photo to to take space
          )
        ),
      ),
    );
  }
}