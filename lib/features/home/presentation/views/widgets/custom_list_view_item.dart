import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox( //! give it hight and aspect solving it with width
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio( //! save responsive of hight and width
      aspectRatio: 2.7/4, //?width/hight
        child: Container(
          // height: MediaQuery.of(context).size.height * .36, //todo: use media quary to be responsive with any device
          // width: MediaQuery.of(context).size.width * .4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            //color: Colors.red,
            image:const DecorationImage(image: AssetImage(AssetsData.testImage,),
            fit: BoxFit.fill //? to fill photo to to take space
            )
          ),
        ),
      ),
    );
  }
}