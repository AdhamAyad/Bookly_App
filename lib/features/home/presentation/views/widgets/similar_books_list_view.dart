import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if(state is SimilerBooksSuccess)
        {
          return SizedBox(
          height: MediaQuery.of(context).size.height *
              .21, //? give hight to item in listview by sizedbox
          child: ListView.builder(
            itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',
                  ),
                );
              }),
        ); 
        }else if(state is SimilerBooksFailuer)
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
