import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>( //? here we do not need to use listener just builder to rebuild UI
      builder: (context, state) {
       if(state is FeaturedBooksSuccess)
       {
        return SizedBox(
          height: MediaQuery.of(context).size.height *.3, //? give hight to item in listview by sizedbox
          child: ListView.builder(
            physics: const BouncingScrollPhysics(), //? make good anmation when you arrive to end of listview
            itemCount: state.books.length, //? lenght of listview
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8), //? pading from left and right of image
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.books[index]); //? navigate and send data with it
                    },
                    child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',)), //? from list of the obj that from state use image url
                );
              }),
        );
       } else if(state is FeaturedBooksFailure)
       {
        return CustomErrorWidget(errMessage: state.errMessage);
       }
       else
       {
        return const CustomLoadingIndicator();
       }
      },
    );
  }
}
