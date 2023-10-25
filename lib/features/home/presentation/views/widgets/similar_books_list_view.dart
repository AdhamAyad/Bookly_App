import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .21, //? give hight to item in listview by sizedbox
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
      {
        return const CustomBookImage();
      }),
    );
  }
}