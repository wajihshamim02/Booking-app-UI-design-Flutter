import 'package:flutter/material.dart';

class CustomHeadingText extends StatefulWidget {
  final String headingText;
  const CustomHeadingText({super.key, required this.headingText});

  @override
  State<CustomHeadingText> createState() => _CustomHeadingTextState();
}

class _CustomHeadingTextState extends State<CustomHeadingText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.headingText,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
