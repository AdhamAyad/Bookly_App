import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_raiting.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width; //? to be responsive with other devices
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),

      child: Column(
        children: [

         const CustomBookDetailsAppBar(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),

          const SizedBox(height: 30,),

          Text('The Jungle Book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),

          const SizedBox(height: 6,),

          Opacity( //? Opacity → to make opicaty for text شفافيه اللون
            opacity: .7,
            child: Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            /*color: Colors.white.withOpacity(.7)*/),),
          ),

          const SizedBox(height: 16,),

          const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
    
    
        ],
      ),
    );
  }
}
