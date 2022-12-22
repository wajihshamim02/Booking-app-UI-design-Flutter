
import 'package:booking_app/cart_screen/components/cart_data.dart';
import 'package:booking_app/cart_screen/components/cart_empty.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Color(0xff7a71ad), Color(0xffaea8dd)])),
        ),
        centerTitle: true,
        // leading: GestureDetector(
        //   onTap: () => Navigator.pop(context),
        //   child: const Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.white,
        //     size: 20,
        //   ),
        // ),
        title: const Text(
          'Wish list',
          textAlign: TextAlign.justify,
        ),
      ),
      body: CartData(),

    );
  
      

  }
}