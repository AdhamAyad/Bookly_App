import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

//! use this this package to handel reapeating code , write it one time and call it then
final getIt = GetIt.instance; //? take instance to use it 

void setUpServiceLocator() //? here we start using it and write our reapeted code , then we will call this code in another place
{
  getIt.registerSingleton<ApiService>(ApiService(Dio())); //? refactor our code
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>())); //? write here the code that will reapeted 
}