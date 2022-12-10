// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyCard extends StatelessWidget {

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final String name;
  // ignore: prefer_typing_uninitialized_variables
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          //alteração para conctar com o banco futuramente
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Text(
              'Saldo',
              style: TextStyle(color: Colors.white), 
            ),
            const SizedBox(height: 8,),
            Text(
              "R\$ " + balance.toString(),
              style: TextStyle(color: Colors.white,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 24,),
            Text(
              cardNumber.toString(),
              style: TextStyle(color: Colors.white,
              fontSize: 14
              ),
            ),
    
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //card number
                Text(
                  name,
                  style: TextStyle(color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              //card expiry date
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}