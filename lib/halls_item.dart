import 'dart:ffi';

import 'package:booking_app/customappbar.dart';
import 'package:booking_app/info.dart';
import 'package:flutter/material.dart';


import 'hall-item_container.dart';

class HallsItem extends StatefulWidget {
  const HallsItem({Key? key}) : super(key: key);

  @override
  _HallsItemState createState() => _HallsItemState();
}

class _HallsItemState extends State<HallsItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Customappbar(),
        Expanded(
          child: ListView.builder(
            itemCount: info.length,
            itemBuilder: ((context, index) {
            return HallItemContainer(textt: info[index]['message'].toString(), text3: '',);
            
          })),
        )
      ]),
    );
  }
}
