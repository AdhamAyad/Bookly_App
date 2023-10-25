import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        // fillColor: Colors.white,
        // filled: true, //? to make color inside textbox white
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white) //? border side → to change color of border
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white) //? border side → to change color of border
        ), 

          hintText: 'Search',
          suffixIcon: const Opacity(
            opacity: .8,
            child:  Icon(  //? suffixIcon  → at end of text feild
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          )),
    );
  }
}