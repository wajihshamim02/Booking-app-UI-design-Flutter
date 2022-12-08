import 'package:booking_app/halls_item.dart';
import 'package:booking_app/home_screen1.dart';
import 'package:booking_app/main_screen.dart';
import 'package:booking_app/settings.dart';
import 'package:booking_app/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

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
      ),
      initialRoute: '/',
      routes: {
         '/': (context) => const Settings(),
        //  '/': (context) => const HomeScreen(),
      },
      // home: HomeScreen(),
    );
  }
}
