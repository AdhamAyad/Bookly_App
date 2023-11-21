//! manage routers of app

import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

//! with every new view we build a new router
abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    //? router → to make navigation  ahen using material app.router
    routes: [
      GoRoute(
        path: '/', //? / → start point for app riuters
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path:
            kHomeView, //? this name that we will call with when we navigate to it by push
        builder: (context, state) => const HomeView(),
      ),
      //! we can provide any view to use the cubit from here
      GoRoute(
        path: kBookDetailsView, //? this name that we will call with when we navigate to it by push
        builder: (context, state) => BlocProvider(
          create: (context) => SimilerBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            book: state.extra as BookModel, //? to give it the data that sent
          ),
          ),
          
        ),

      GoRoute(
        path:
            kSearchView, //? this name that we will call with when we navigate to it by push
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
