

import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl; //? to get it from API
  @override
  Widget build(BuildContext context) {
    return ClipRRect( //? use it to give it border radues
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio( //! save responsive of hight and width to be good on another device
      aspectRatio: 2.6/4, //?width/hight
        //? CachedNetworkImage → is a widget comes from package and the images appears with a good fade
        child: CachedNetworkImage( //! with good fade and cashed it then we donot need to reload it again and handel if gives it a wrong url
          fit: BoxFit.fill, //? make it fill all space it have
          imageUrl: imageUrl,
          placeholder: (context, url) => const CustomLoadingIndicator(), //? befor image appeare put this, we can put another widget as loading
          errorWidget: (context, url, error) => const Icon(Icons.error),) //? this is when got error
      )
    );
  }
}


// Container(
// /        // height: MediaQuery.of(context).size.height * .36, //todo: use media quary to be responsive with any device
//         // width: MediaQuery.of(context).size.width * .4,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           //color: Colors.red, //? to test code , networkimage → image by link
//           image: DecorationImage(image: NetworkImage(imageUrl), //? give it to widget to use it
//           fit: BoxFit.fill //? to fill photo to to take space
//           )
//         ),
//       ),