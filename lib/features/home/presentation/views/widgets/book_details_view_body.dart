import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView( //? make it scrolable and able me to scroll when using expanded widget
        slivers: [
          SliverFillRemaining( //? SliverFillRemaining → fill every empty space in scrollview
          hasScrollBody: false, //? لان كداكدا هيتعملها اسكرول ب الكامل
            child: Column(
          children: [
             const CustomBookDetailsAppBar(),
            
             BookDetailsSection(book: book,),

            //? Expanded → make it to be responsive with another devices and take all space it able to take
            const Expanded(child:  SizedBox(height: 43,)), 
            
            const SimilerBooksSection(),
             
            const SizedBox(height: 40,),
    
          ],
        ),)] 
      ),
    );
  }
}









