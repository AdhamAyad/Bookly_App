//! put the important widgets in this folder that we will use more than one time

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(

      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRaduis, required this.text, this.fontSize, this.onPressed});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRaduis; //? make it null to give it defult value in our code
  final String text;
  final double? fontSize; // todo : we can make it nullable becuse when it nullable it will take the defult value
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,

      child: TextButton( //? textbutton → give you an small animation when click

          style: TextButton.styleFrom(
              //? give style to text button
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder( //! shape == border raduis == clipa rect
                  borderRadius: borderRaduis ??
                      BorderRadius.circular(
                          16))
              ),

          onPressed: onPressed,

          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w900,
                fontSize: fontSize),
          )),
    );
  }
}
