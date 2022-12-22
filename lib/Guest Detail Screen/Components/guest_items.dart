import 'package:booking_app/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class GuestItems extends StatefulWidget {
  final String text_guest;
  final Icon remove1;
  final Icon add1;
  final String value_text;


  const GuestItems({Key? key, required this.text_guest, required this.remove1, required this.add1, required this.value_text}) : super(key: key);

  @override
  _GuestItemsState createState() => _GuestItemsState();
}

class _GuestItemsState extends State<GuestItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text_guest,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          // gradient: LinearGradient(colors: [
                          //   Color(AppColors.primaryDark),
                          //   Color(AppColors.primaryLight),
                          // ]),
                          color: Color(0xffC9C6EF),
                          shape: BoxShape.circle),
                      child:  widget.remove1
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Text(
                      widget.value_text,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        
                        color: Color(0xffC9C6EF),
                          shape: BoxShape.circle),
                      child: widget.add1
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
