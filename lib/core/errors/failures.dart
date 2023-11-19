import 'package:dio/dio.dart';

//! here we handels all error that may comes from Api Services

abstract class Failure {
      final String errMessage; //? to take message to print it to user to make him understand what are going
      const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage); //? in his constr return the error messg that in the perant 
  
  //! factory constr → return obj of Serverfailure that inside it the errMessg

  //! this handle the error when comes from Dio and get the message that describes what happens
  factory ServerFailure.fromDioException(DioException dioException) { 
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TimeOut With API');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Connection SendTimeOut With API');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Connection ReceviveTimeOut With API');
      case DioExceptionType.badCertificate:
        return ServerFailure('Connection BadCertificate With API');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data); //? respon.data → thats the map that returns when got error
      case DioExceptionType.cancel:
        return ServerFailure('Connection Cenceld With API');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error With API');
      case DioExceptionType.unknown:
        return ServerFailure('Connection Unkhnown With API');
      default: // todo: when any thing from all of this not happends do this
        return ServerFailure('Opps There Was An Error'); 

    }
  }

  //! to handele the response that comes from Api when Error and get the message that describes what happens
  factory ServerFailure.fromResponse(int statesCode , dynamic response) 
  {
    if(statesCode == 400 || statesCode == 401 || statesCode == 403 )
    {
      return ServerFailure(response['error']['message']);
    }
    else if(statesCode == 404)
    {
      return ServerFailure('Method Not Found');
    }
    else if(statesCode == 500)
    {
      return ServerFailure('Internal Server Error, Please Try Again Later');
    }
    else
    {
      return ServerFailure('Opps There Was An Error');
    }
  }
}
