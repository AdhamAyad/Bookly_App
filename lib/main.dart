import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUpServiceLocator(); //? to run the set up code that we write with set it , its run as service locator
  runApp(const Bookly());
}


class Bookly extends StatelessWidget {
  const Bookly({super.key});
  //! .copyWith( → بنشا نسخه بس بعدل عليها سواء كلاس او اى شئ
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider( //? provide code to use this cubit
      providers: [//! to handele our code
        BlocProvider(create:(context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks()), //! ..fetch → call it after make provide and a copy of this cubit
        BlocProvider(create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks()), //? will go to the get_it it file and take the code that already writen
      ],
      child: MaterialApp.router( //? from get package ,get → have transition and faster than materialapp and less code than normal
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router, //? same home in material app , it takes / and starts with it
        //! in theme data we can make font manully by themefont
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaruColor,//? make all scaffolds take this color , dark → to make defult color white
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)), //? from google fonts can make textfont for all app and edit on it
        // home:const SplashView(),
      ),
    );
  }
}

