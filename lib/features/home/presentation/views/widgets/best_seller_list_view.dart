import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //shrinkWrap: true, //? take hight that the child of list view takes and build all widget in one time and same time
        physics: //* if i delete it it will scroll and page scroll
            const NeverScrollableScrollPhysics(), //? dont scroll becuse customscrollview will scroll it and it becoms same column
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const BestSellerListViewItem();
        }));
  }
}