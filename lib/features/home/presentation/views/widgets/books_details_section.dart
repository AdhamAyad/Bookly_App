import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_raiting.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context)
        .size
        .width; //? to be responsive with other devices
    return Column(
      children: [
        Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: const CustomBookImage(imageUrl: '',),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              //? Opacity → to make opicaty for text شفافيه اللون
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500,
                  fontStyle:
                      FontStyle.italic, /*color: Colors.white.withOpacity(.7)*/
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const BookRating(
              rating: 12,
              count: 12,
              mainAxisAlignment: MainAxisAlignment.center,
            ),

            const SizedBox(height: 37,),
      
            const BooksAction(),
      ],
    );
  }
}