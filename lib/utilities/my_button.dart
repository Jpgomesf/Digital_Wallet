// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButton extends StatelessWidget {

  final int iconPath;
  final String buttonText;
  final bool iconMaterialLib;
  final buttonColor;


  const MyButton({
    Key? key,
    required this.iconPath,
    required this.buttonText,
    required this.buttonColor,
    required this.iconMaterialLib

  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width:65,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            //borderRadius: BorderRadius.circular(100),
            shape: BoxShape.circle,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade400,
            //     blurRadius: 7,
            //     spreadRadius: 2
            //   ),
            // ], 
          ),
          child: Center(
            child: iconMaterialLib == true ? 
            Container(
                child: 
                Icon(
                  IconData(iconPath, fontFamily: 'MaterialIcons'),
                  color: buttonColor,
                  size: 25,
                )
            ) : 
            Container(
                child: 
                Icon(
                  IconData(iconPath, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
                  color: buttonColor,
                  size: 25,
                )
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