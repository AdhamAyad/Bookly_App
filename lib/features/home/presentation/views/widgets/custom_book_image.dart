import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl; //? to get it from API
  @override
  Widget build(BuildContext context) {
    return AspectRatio( //! save responsive of hight and width to be good on another device
    aspectRatio: 2.6/4, //?width/hight
      child: Container(
        // height: MediaQuery.of(context).size.height * .36, //todo: use media quary to be responsive with any device
        // width: MediaQuery.of(context).size.width * .4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          //color: Colors.red, //? to test code , networkimage → image by link
          image: DecorationImage(image: NetworkImage(imageUrl), //? give it to widget to use it
          fit: BoxFit.fill //? to fill photo to to take space
          )
        ),
      ),
    );
  }
}