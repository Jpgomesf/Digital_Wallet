import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utilities/my_button.dart';
import '../utilities/my_card.dart';
import '../utilities/my_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return 
    Column(
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
                  color: Colors.red.shade400,
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
                MyCard(
                  balance: 277.0,
                  cardNumber: 12345678,
                  name: 'John Doe',
                  expiryMonth: 12,
                  expiryYear: 24, 
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ),

          SizedBox(height: 25),
          
          SmoothPageIndicator(
            controller: _controller, 
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
              dotHeight: 10,
              dotWidth: 10
            ),
          ),

          SizedBox(height: 25),

          //4 buttons -> pix / stats / cards / bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  buttonText: 'Pay', 
                  buttonColor: Colors.black
                ),
                MyButton(
                  iconPath: 0xf04dc, 
                  buttonText: 'Transferir', 
                  buttonColor: Colors.black
                ),
              ],
            ),
          ),

        SizedBox(height: 10,),

        Padding(
          padding:  EdgeInsets.all(25.0),
          child: Column(
            children: [
              //Empréstimo
              MyRow(
                title: "Empréstimo",
                smDescription: "Alegria de comprar",
              ),
            ],
          ),
        ),

      

        // Container(
        //   color: Colors.grey,
        //   height: 170,
        //   child: 
        //   PageView(
        //     controller: _pageController,
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       MyDiscoverCard(),
        //       MyDiscoverCard(),
        //     ],
        //   ),
        // ) 
      ],
    );
  }
}