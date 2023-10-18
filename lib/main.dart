import 'package:bookly/constants.dart';
import 'package:bookly/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}


class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp( //? from get package
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaruColor,), //? make all scaffolds take this color , dark → to make defult color white
      home:const SplashView(),
    );
  }
}

