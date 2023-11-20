import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage}); //todo: 
  final String errMessage; // todo: to get it from user 
  @override
  Widget build(BuildContext context) {
    return Text(errMessage,style: Styles.textStyle18,); //? take it from Styles
  }
}