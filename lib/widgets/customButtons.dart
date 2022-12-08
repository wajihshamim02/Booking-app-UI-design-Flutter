import 'package:booking_app/utilis/app_colors.dart';
import 'package:flutter/material.dart';

import '../theme/themecolor.dart';

class CustomButtons extends StatefulWidget {
  final String textbutton;

  const CustomButtons({Key? key, required this.textbutton}) : super(key: key);

  @override
  _CustomButtonsState createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        child: Text(widget.textbutton,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color:Colors.white)),
      ),
      width: 300,
      height: 70,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [ 
         Color( AppColors.primaryDark),Color(AppColors.primaryLight)
          
        ]),
          borderRadius: BorderRadius.circular(30), color: Color(AppColors.primaryDark)),
    );
  }
}
