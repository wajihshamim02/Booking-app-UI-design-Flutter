import 'package:booking_app/Edit%20Profile%20Screen/edit_profile_screen.dart';
import 'package:booking_app/calender_start-end_date.dart';
import 'package:booking_app/Halls%20items/halls_item.dart';
import 'package:booking_app/home_screen1.dart';
import 'package:booking_app/main_screen.dart';
import 'package:booking_app/settings.dart';
import 'package:booking_app/sign_in.dart';
import 'package:booking_app/sign_up.dart';
import 'package:booking_app/testing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'Hall Detail Screen/hall_detail_screen.dart';
import 'bottomnav.dart';

void main() {   
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.blue,
        tabBarTheme: TabBarTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen()
        //  '/': (context) => const HomeScreen(),
      },
    );
  }
}
