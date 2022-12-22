import 'package:flutter/material.dart';

import '../../Commons/space_size_box.dart';

class NoBoooking1 extends StatefulWidget {
  const NoBoooking1({Key? key}) : super(key: key);

  @override
  _NoBoooking1State createState() => _NoBoooking1State();
}

class _NoBoooking1State extends State<NoBoooking1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: size.height*0.2,),
        Container(
          height: 130,
          // width: 50,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/no_booking.png'),
          )),
        ),
        CustomSpace(),
        CustomSpace(),
        Text(
          'You have no upcoming bookings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center
        ),
        CustomSpace(),
       

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Are you looking for a completed or cancelled booking?',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ));
  }
}
