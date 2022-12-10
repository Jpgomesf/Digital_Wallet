// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRow extends StatelessWidget {
  final String title;
  final String smDescription;
  final int iconPath;

  const MyRow({
    Key? key,
    required this.title,
    required this.smDescription,
    required this.iconPath

  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
    Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 2.0,
            spreadRadius: 2
          ),
        ], 
      ),      
      child: 
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0,),
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                
                SizedBox(height: 5,),
                Text(smDescription, style: TextStyle(fontSize: 13, color: Colors.grey.shade800), )
              ],
            ),

            Icon(IconData(0xf3d1, fontFamily: CupertinoIcons.iconFont, 
              fontPackage: CupertinoIcons.iconFontPackage),
              size: 17,
            ),
          ],
        ),
      ),
    );
  }
}