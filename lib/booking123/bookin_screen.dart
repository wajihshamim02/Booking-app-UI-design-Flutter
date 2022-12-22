import 'dart:ffi';

import 'package:booking_app/booking123/components/cancelled1.dart';
import 'package:booking_app/booking123/components/completed1.dart';
import 'package:booking_app/booking123/components/no_boooking1.dart';
import 'package:booking_app/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class BookinScreen extends StatefulWidget {
  const BookinScreen({Key? key}) : super(key: key);

  @override
  _BookinScreenState createState() => _BookinScreenState();
}

class _BookinScreenState extends State<BookinScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff7a71ad), Color(0xffaea8dd)]),
            ),
          ),
          // leading: GestureDetector(
          //   onTap: () => Navigator.pop(context),
          //   child: const Icon(
          //     Icons.arrow_back_ios,
          //     color: Colors.white,
          //     size: 20,
          //   ),
          // ),
          title: const Text(
            'My bookings',
            textAlign: TextAlign.justify,
          ),
          // centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'Upcoming',),
              Tab(text: 'Completed',),
              Tab(text: 'Cancelled',),
            ],
          ),
      
        ),
        
        body: TabBarView(children: [
          NoBoooking1(),
          Completed1(),
          Cancelled1(),
        ])
        ),
      );
  }
}
