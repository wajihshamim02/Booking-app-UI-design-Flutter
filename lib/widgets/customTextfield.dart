
import 'package:booking_app/theme/themecolor.dart';
import 'package:booking_app/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final String text_label;
  bool obscure_text = true;
  final Icon icon1;

  CustomTextfield({Key? key, required this.text_label ,required this.icon1 , required this.obscure_text}) : super(key: key);

  @override
  _CustomTextfieldState createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 330,
          height: 50,
          child: TextField(
            obscureText: widget.obscure_text,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: widget.text_label,
              labelStyle: TextStyle(
                color: Colors.black,fontSize: 15//<-- SEE HERE
              ),
              floatingLabelStyle: TextStyle(color: Colors.black),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              hintStyle: TextStyle(fontSize: 15.0, color: Color(AppColors.primaryLight)),
              prefixIcon: widget.icon1,
              enabledBorder:  UnderlineInputBorder(
                borderSide: BorderSide(color: Color(AppColors.primaryLight)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(AppColors.primaryLight),
              ),
              // hintText: "Email",
            ),
          ),
        ),
      )  ],
    );
  }
}
