import 'package:bookly/core/utils/functions/lunch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child:  Row(
        children: [
          const Expanded(//? expanded to take all space in row that it can to take
              child: CustomButton(
                text: 'Free',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRaduis: BorderRadius.only(
                topLeft: Radius.circular(32), bottomLeft: Radius.circular(32)), 
          )),
    
          Expanded(//? expanded to take all space in row that it can to take
              child: CustomButton(
                onPressed: ()async{
                  await lunchCustomUrl(context, book.volumeInfo.previewLink!);
                },
                fontSize: 16,
                text: getText(book), // todo: book.volumeInfo.previewLink == null? 'Not Avilable' : 'Preview',
            textColor: Colors.white,
            backgroundColor: const Color(0XFFEF8262),
            borderRaduis: const BorderRadius.only(
                topRight: Radius.circular(32), bottomRight:  Radius.circular(32)), 
          )),
        ],
      ),
    );
  }
  String getText(BookModel book) //? metod that check if it null to write not avilable or preview
  {
    if(book.volumeInfo.previewLink == null)
    {
      return 'Not Avilable';
    }
    else{
      return 'Preview';
    }
  }
}