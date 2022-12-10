// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButton extends StatelessWidget {

  final int iconPath;
  final String buttonText;
  final buttonColor;


  const MyButton({
    Key? key,
    required this.iconPath,
    required this.buttonText,
    required this.buttonColor

  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 65,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 10,
                spreadRadius: 5
              ),
            ], 
          ),
          child: Center(
            child: 
              Icon(
                IconData(iconPath, fontFamily: 'MaterialIcons'),
                color: buttonColor,
                size: 35,
            )
          ),
        ),

        SizedBox(height: 7,),

        Text(
          buttonText,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}