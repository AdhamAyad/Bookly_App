import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()async
  {
    emit(NewestBookLoading()); //?when code call this function emit state

    var result = await homeRepo.fetchNewestBooks();

     //! in this metod we use either its may return failure or return list of booksmodel and handel the return
    result.fold((failure){ //? when right happens
      emit(NewestBookFailuer(failure.errMessage)); //? emit state and give it the message of error that sent it failure object
    }, (books) { //? this when left happens
      emit(NewestBookSuccess(books)); //? emit state and sent the list of books
    });

  }
}
