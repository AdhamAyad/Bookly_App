import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
  var data = await apiService.get( url: 'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');

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
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
