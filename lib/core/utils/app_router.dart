//! manage routers of app

import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';
//! with every new view we build a new router
abstract class AppRouter
{
 static const kHomeView = '/HomeView';

 static final router = GoRouter( //? router → to make navigation  ahen using material app.router
  routes: [
    GoRoute(
      path: '/', //? / → start point for app riuters
      builder: (context, state) => const SplashView(),
    ),

    GoRoute(
      path: kHomeView, //? this name that we will call with when we navigate to it by push
      builder: (context, state) => const HomeView(),
    ),
  ],
);
}