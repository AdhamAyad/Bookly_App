import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          CustomSearchTextFeild(),
          SizedBox(height: 16,),
          Text('Search Result',style: Styles.textStyle18,),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListView()) //? expanded → to take all space that able to take
        ],
      ),
    );
  }
}

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
          return const BookListViewItem();
        }));
  }
}


