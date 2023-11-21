import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks()async
  {
    emit(FeaturedBooksLoading()); //?when code call this function emit state

    var result = await homeRepo.fetchFeaturedBooks();

     //! in this metod we use either its may return failure or return list of booksmodel and handel the return
    result.fold((failure){ //? when right happens
      emit(FeaturedBooksFailure(failure.errMessage)); //? emit state and give it the message of error that sent it failure object
    }, (books) { //? this when left happens
      emit(FeaturedBooksSuccess(books)); //? emit state and sent the list of books
    });

  }
}
