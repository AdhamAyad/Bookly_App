import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
//? Either<left,right> → right: if it goes good without errors , left: if goes error return that and it is from dartz package
abstract class HomeRepo //! class that have all method that we will use 
{ //! repos pattern → make abstract class that we iside it make the featuers and methods that we will make and that tell what it will do?
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks(); // todo: can make in abstract class only → must be rewrite in classes that extendes from it by @override
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks(); //? it uses when i want to make method with more than one way
  Future<Either<Failure,List<BookModel>>> fetchSimilardBooks({required String category}); //? when he go to about page
}