import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //shrinkWrap: true, //? take hight that the child of list view takes and build all widget in one time and same time
       // physics: //* if i delete it it will scroll and page scroll
           // const NeverScrollableScrollPhysics(), //? dont scroll becuse customscrollview will scroll it and it becoms same column
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) {
          // return const BookListViewItem();
          return const Text('data');
        }));
  }
}