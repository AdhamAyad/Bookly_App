import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  //! To Get Newest Books
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
  var data = await apiService.get( url: 'volumes?Filtering=free-ebooks&q=computer scince&sorting=newest');//! we make sorting here for newest
          List<BookModel> books = [];
          for(var item in data['items']) //? item in data → becuse itis a list and into it theres a maps
          {
           
  books.add(BookModel.fromJson(item));

          }
          return right(books);  //! thats if success return List of book model      
}

 on Exception catch (e) {
  if(e is DioException)
  {
    return left(ServerFailure.fromDioException(e));
  }
  return left(ServerFailure(e.toString()));
}
}

  //! To Get Featured Books
  @override
  //! it may return Failure object that inside it the message of error
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
  var data = await apiService.get( url: 'volumes?Filtering=free-ebooks&q=subject:programming');//! with out sorting

          List<BookModel> books = [];
          for(var item in data['items']) //? item in data → becuse itis a list and into it theres a maps
          {
            books.add(BookModel.fromJson(item));
          }
          return right(books);  //! thats if success return List of book model      
}

 on Exception catch (e) {
  if(e is DioException)
  {
    return left(ServerFailure.fromDioException(e));
  }
  return left(ServerFailure(e.toString()));
}
}

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilardBooks({required String category}) async {
    try {
  var data = await apiService.get( url: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:programming');//! with out sorting

          List<BookModel> books = [];
          for(var item in data['items']) //? item in data → becuse itis a list and into it theres a maps
          {
            books.add(BookModel.fromJson(item));
          }
          return right(books);  //! thats if success return List of book model      
}

 on Exception catch (e) {
  if(e is DioException)
  {
    return left(ServerFailure.fromDioException(e));
  }
  return left(ServerFailure(e.toString()));
}
}
}
