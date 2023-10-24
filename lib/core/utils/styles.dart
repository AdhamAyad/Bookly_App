import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

//! refactor code and to reuse styles
abstract class Styles {
  // todo : make styles of text here with size that used more than one time and named it with font size and make it bold if the greater is bold
  //? named by font size and when we reuse it we use copyWith() to edit and append
   //! Make style for reapeted size and that has the majority in font weight
  //? text style that size is 18 and semibold
  static const textStyle18 =TextStyle(fontSize: 18,
  fontWeight: FontWeight.w600);

  static const textStyle20 =TextStyle(fontSize: 20,
  fontWeight: FontWeight.normal,);

  static const textStyle30 =TextStyle(fontSize: 30,
  fontWeight: FontWeight.normal,
  fontFamily: kGtSectraFine);

  static const textStyle14 =TextStyle(fontSize: 14,
  fontWeight: FontWeight.normal,);

  static const textStyle16 =TextStyle(fontSize: 16,
  fontWeight: FontWeight.w500,);
}