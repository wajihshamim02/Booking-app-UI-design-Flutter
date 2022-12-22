import 'package:booking_app/Commons/space_size_box.dart';
import 'package:flutter/material.dart';

class CartEmpty extends StatefulWidget {
  const CartEmpty({ Key? key }) : super(key: key);

  @override
  _CartEmptyState createState() => _CartEmptyState();
}

class _CartEmptyState extends State<CartEmpty> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 130,
          // width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/cart_is_empty.png'),)
          ),
        ),
        Text('Your cart is empty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
        ),
       CustomSpace(),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15),
           child: Text('Add Halls to your cart and book together for greater savings',style: TextStyle(fontSize: 18),
           textAlign: TextAlign.center,
        ),
         ),
      ],
      
    );
  }
}