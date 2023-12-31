import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int rating; //? take variables as 
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment, //? to put it in center
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0XFFFFDD4F),
          size: 14,
        ),

        const SizedBox(
          width: 6.3,
        ),

        Text(
          '$rating',
          style: Styles.textStyle16,
        ),

        const SizedBox(
          width: 5,
        ),

        Opacity(
            opacity: .5,
            child: Text('($count)',
                style: Styles.textStyle14.copyWith(
                    /*color: const Color(0XFF707070)),*/ fontWeight:
                        FontWeight.w600))),
      ],
    );
  }
}

