part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {} //? initial state

// todo: when iam get data from internet theres three states  → 
final class FeaturedBooksLoading extends FeaturedBooksState {} //? when loading

final class FeaturedBooksSuccess extends FeaturedBooksState { //? when success send data with state
  final List<BookModel> books;
  const FeaturedBooksSuccess(this.books);
}
final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage; //? carry the error message into state , to call it and throw it to any widget in consumer use state.errMessage
  const FeaturedBooksFailure(this.errMessage);
}
