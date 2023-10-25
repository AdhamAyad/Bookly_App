import 'package:bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView( //? make it scrolable and able me to scroll when using expanded widget
        slivers: [
          SliverFillRemaining( //? SliverFillRemaining → fill every empty space in scrollview
          hasScrollBody: false, //? لان كداكدا هيتعملها اسكرول ب الكامل
            child: Column(
          children: [
             CustomBookDetailsAppBar(),
            
             BookDetailsSection(),

            //? Expanded → make it to be responsive with another devices and take all space it able to take
             Expanded(child:  SizedBox(height: 43,)), 
            
             SimilerBooksSection(),
             
             SizedBox(height: 40,),
    
          ],
        ),)] 
      ),
    );
  }
}









