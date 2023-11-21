import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});
  final BookModel book;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() { //? every time before build this view it fetch data that will apreare
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilardBooks(category: widget.book.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookdetailsViewBody(book: widget.book,)), //? SafeArea → اتاكد ان الصفحه هتتبنى فى المكان الامن و مش هتكون حاجه مغطيه عليه
    );
  }
}