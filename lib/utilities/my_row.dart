// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRow extends StatelessWidget {
  final String title;
  final String smDescription;

  const MyRow({
    Key? key,
    required this.title,
    required this.smDescription,

  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            
            SizedBox(height: 5,),
            Text(smDescription, style: TextStyle(fontSize: 13, color: Colors.grey.shade800), )
          ],
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}