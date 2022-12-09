// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:digital_wallet/utilities/my_button.dart';
import 'package:digital_wallet/utilities/my_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {

  //pageController
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const[
                      Text(
                        'My',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold), 
                      ),

                      Text(
                        'Wallet',
                        style: TextStyle(fontSize: 28), 
                      ),
                    ],
                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.add),
                  ) 
                ],
              ),),

              SizedBox(height: 25),

            //cards
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 430.0,
                      cardNumber: 12345678,
                      name: 'Jefferson',
                      expiryMonth: 12,
                      expiryYear: 24, 
                      color: Colors.red[800],
                    ),
                    MyCard(
                      balance: 20918391032.0,
                      cardNumber: 1123123,
                      name: 'gam Doe',
                      expiryMonth: 12,
                      expiryYear: 24, 
                      color: Colors.green[400],
                    ),
                    MyCard(
                      balance: 0,
                      cardNumber: 12345678,
                      name: 'John Doe',
                      expiryMonth: 12,
                      expiryYear: 24, 
                      color: Colors.black,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),
              
              SmoothPageIndicator(
                controller: _controller, 
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                  dotHeight: 10,
                  dotWidth: 10
                ),
              ),

              SizedBox(height: 25),

              //3 buttons -> pix / pay / bills
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [                  
                  MyButton(
                    iconPath: 0xf054e, 
                    buttonText: 'Pix', 
                    buttonColor: Colors.black
                  ),
                  MyButton(
                    iconPath: 0xe0cc, 
                    buttonText: 'Análise', 
                    buttonColor: Colors.black
                  ),
                  MyButton(
                    iconPath: 0xe19f, 
                    buttonText: 'Card', 
                    buttonColor: Colors.black
                  ),
                  MyButton(
                    iconPath: 0xf04dc, 
                    buttonText: 'Transferir', 
                    buttonColor: Colors.black
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}