import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
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



