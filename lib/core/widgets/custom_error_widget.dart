import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage}); //todo: 
  final String errMessage; // todo: to get it from user 
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage,style: Styles.textStyle18,textAlign: TextAlign.center,)); //? take it from Styles
  }
}