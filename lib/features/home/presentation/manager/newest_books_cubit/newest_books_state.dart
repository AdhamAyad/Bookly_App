part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBookLoading extends NewestBooksState {}
final class NewestBookSuccess extends NewestBooksState {
  final List<BookModel> books;
  const NewestBookSuccess(this.books);
}
final class NewestBookFailuer extends NewestBooksState {
  final String errMessage; //? carry the error message into state , to call it and throw it to any widget in consumer use state.errMessage
  const NewestBookFailuer(this.errMessage);
}
