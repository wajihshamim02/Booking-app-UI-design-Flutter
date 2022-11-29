import 'package:flutter/material.dart';

class HallDetailCard extends StatefulWidget {
  final String hall_name;
  const HallDetailCard({super.key, required this.hall_name});

  @override
  State<HallDetailCard> createState() => _HallDetailCardState();
}

class _HallDetailCardState extends State<HallDetailCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.0,
              blurRadius: 5.0,
              offset: Offset(0, 3),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.hall_name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: size.height * 0.0001,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 14,
                  color: Colors.blueGrey,
                ),
                Text(
                  'Johar Chowrangi',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.0001,
            ),
            Row(
              children: [
                // Text(
                //   'Accomodation: 300-500',
                //   //textAlign: TextAlign.right,
                //   style: TextStyle(
                //       fontSize: 12,
                //       fontWeight: FontWeight.w100,
                //       color: Colors.grey),
                // ),
                Spacer(),
                Text(
                  '8.1 Excellent',
                  //textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff807AAD)),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Accomodation: 300-500',
                  //textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey),
                ),
                Spacer(),
                Text(
                  '347 reviews',
                  //textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
