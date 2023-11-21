import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBookSuccess)
        {
          return ListView.builder( //? scroll not come from it it coms from the biggest scrollview
            //shrinkWrap: true, //? take hight that the child of list view takes and build all widget in one time and same time
            physics: //* if i delete it it will scroll and page scroll
                const NeverScrollableScrollPhysics(), //? dont scroll becuse customscrollview will scroll it and it becoms same column
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: BookListViewItem(bookModel: state.books[index],),
              ); //? give it object from the list that come frome state to view data
            }));
        }
        else if(state is NewestBookFailuer)
        {
          return CustomErrorWidget(errMessage: state.errMessage);
        }else
        {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
