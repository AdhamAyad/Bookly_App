import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilardBooks({required String category})async
  {
    emit(SimilerBooksLoading()); //?when code call this function emit state

    var result = await homeRepo.fetchSimilardBooks(category: category);

     //! in this metod we use either its may return failure or return list of booksmodel and handel the return
    result.fold((failure){ //? when right happens
      emit(SimilerBooksFailuer(failure.errMessage)); //? emit state and give it the message of error that sent it failure object
    }, (books) { //? this when left happens
      emit(SimilerBooksSuccess(books)); //? emit state and sent the list of books
    });

  }
}
