// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyExtraCard extends StatelessWidget {
  const MyExtraCard({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Container(
        height: 220,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey[300], 
          borderRadius: BorderRadius.circular(8)),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8)
              ),
              child: Image.asset("assets/images/person-holds-a-book-over-a-stack-and-turns-the-page.jpg", 
                fit: BoxFit.fill,
                height: 100,
                width: 200,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 8),
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 6,),
                  Container(
                    width: 170,
                    child: Text('Cupertino icon named. mmmmmmmmmmmmmmmmmmmm',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 6,),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: 
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.resolveWith((states) => Size(80, 25)),
                    backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                      return Colors.purple;
                    }),
                  ),
                child: 
                  Text('Conhecer', style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold
                    ),
                  ),
              ),
            ),
          ],
        )
      );
  }
}