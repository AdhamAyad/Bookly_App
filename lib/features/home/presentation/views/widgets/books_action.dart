import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child:  Row(
        children: [
          Expanded(//? expanded to take all space in row that it can to take
              child: CustomButton(
                text: r'Free',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRaduis: BorderRadius.only(
                topLeft: Radius.circular(32), bottomLeft: Radius.circular(32)), 
          )),
    
          Expanded(//? expanded to take all space in row that it can to take
              child: CustomButton(
                fontSize: 16,
                text: 'Preview',
            textColor: Colors.white,
            backgroundColor: Color(0XFFEF8262),
            borderRaduis: BorderRadius.only(
                topRight: Radius.circular(32), bottomRight: Radius.circular(32)), 
          )),
        ],
      ),
    );
  }
}