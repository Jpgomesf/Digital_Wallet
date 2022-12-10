// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyDiscoverCard extends StatelessWidget {
  const MyDiscoverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return    
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 160,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)
                        ),
                        child: Image.asset("assets/images/malenia-head-elden-ring.jpg", 
                          fit: BoxFit.fill,
                          height: 70,
                          //width: 200,
                        ),
                      ),
      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Text('Título', 
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text('exemplo desc',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade800
                                  ),
                                ),
                              ],
                            )
                      ),
                    ],
                  ),
              )
            ],
          )
        ],
      ),
    );
  }
}