import 'package:flutter/material.dart';

//! refactor code and to reuse styles
abstract class Styles {
  // todo : make styles of text here with size that used more than one time and named it with font size and make once bold and another semibold
  //? named by font size and when we reuse it we use copyWith() to edit and append

  //? text style that size is 18 and semibold
  static const textStyle18 =TextStyle(fontSize: 18,
  fontWeight: FontWeight.w600);
}