import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_raiting.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context)
        .size
        .width; //? to be responsive with other devices
    return Column(
      children: [
        Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.smallThumbnail ?? '',),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              book.volumeInfo.title!,
              textAlign: TextAlign.center,
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              //? Opacity → to make opicaty for text شفافيه اللون
              opacity: .7,
              child: Text(
                book.volumeInfo.authors![0],
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
            BookRating(
              rating: book.volumeInfo.averageRating ?? 0,
              count: book.volumeInfo.ratingsCount ?? 0,
              mainAxisAlignment: MainAxisAlignment.center,
            ),

            const SizedBox(height: 37,),
      
            const BooksAction(),
      ],
    );
  }
}