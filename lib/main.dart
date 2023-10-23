import 'package:bookly/constants.dart';
import 'package:bookly/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}


class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp( //? from get package ,get → have transition and faster than materialapp and less code than normal
      debugShowCheckedModeBanner: false,
      //! in theme data we can make font manully by themefont
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaruColor,//? make all scaffolds take this color , dark → to make defult color white
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)), //? from google fonts can make textfont for all app and edit on it
      home:const SplashView(),
    );
  }
}

