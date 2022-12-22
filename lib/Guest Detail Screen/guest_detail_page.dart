import 'package:booking_app/Commons/space_size_box.dart';
import 'package:booking_app/Guest%20Detail%20Screen/Components/guest_items.dart';
import 'package:booking_app/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class GuestDetails extends StatefulWidget {
  const GuestDetails({Key? key}) : super(key: key);

  @override
  _GuestDetailsState createState() => _GuestDetailsState();
}

class _GuestDetailsState extends State<GuestDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff7a71ad), Color(0xffaea8dd)]),
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: const Text(
          'Guest details',
          textAlign: TextAlign.justify,
        ),
      ),
      body: Column(
        children: 
        [ 
        GuestItems(add1: Icon(Icons.add,color: Colors.white,), remove1: Icon(Icons.remove,color: Colors.white,), text_guest: 'Room', value_text: '2',),
        SizedBox(height: MediaQuery.of(context).size.height*0.0001,),
        GuestItems(add1: Icon(Icons.add,color: Colors.white,), remove1: Icon(Icons.remove,color: Colors.white,), text_guest: 'Adult', value_text: '3',),
       SizedBox(height: MediaQuery.of(context).size.height*0.0001,),
        GuestItems(add1: Icon(Icons.add,color: Colors.white,), remove1: Icon(Icons.remove,color: Colors.white,), text_guest: 'Children', value_text: '4',)
        ],
        ),
    );
  }
}
