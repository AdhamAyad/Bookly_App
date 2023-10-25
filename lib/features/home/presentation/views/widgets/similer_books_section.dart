import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //? make text at start same align widget do
      children: [
      // Align( //? align → to put it only in centerleft
      //         alignment: Alignment.centerLeft,
              /*child:*/ Text('You May Also Like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w900),),
      
              const SizedBox(height: 16,),
      
              const SimilerBooksListView(),

    ],);
  }
}