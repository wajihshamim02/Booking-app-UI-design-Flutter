
import 'package:booking_app/Hall%20Detail%20Screen/Componenets/hall_detail_card.dart';
import 'package:booking_app/Hall%20Detail%20Screen/Componenets/hall_detail_page_view.dart';
import 'package:booking_app/Hall%20Detail%20Screen/Componenets/hall_rating.dart';
import 'package:booking_app/Hall%20Detail%20Screen/Componenets/review_list.dart';
import 'package:booking_app/Commons/custom_heading_text.dart';
import 'package:booking_app/Commons/space_size_box.dart';
import 'package:flutter/material.dart';

class HallDetailPage extends StatefulWidget {
  const HallDetailPage({super.key});

  @override
  State<HallDetailPage> createState() => _HallDetailPageState();
}

class _HallDetailPageState extends State<HallDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.5,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: size.height * 0.4,
                        width: double.infinity,
                        child: const HallDetailPageView(),
                      ),
                      Positioned(
                          top: size.height * 0.345,
                          left: size.width * 0.1,
                          child: const HallDetailCard(
                            hall_name: 'La Casa Banquet',
                          )),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          children: [
                            InkWell(
                               onTap: () => Navigator.pop(context),
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    color: Colors.white, shape: BoxShape.circle),
                                child:  const Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.share,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomHeadingText(headingText: 'Reviews'),
                      const CustomSpace(),
                      const CustomRating(),
                      const CustomSpace(),
                      const Divider(
                        thickness: 0.3,
                        color: Colors.grey,
                      ),
                      const CustomSpace(),
                      const CustomHeadingText(headingText: "What reviews say"),
                      const CustomSpace(),
                      SizedBox(
                          height: size.height * 0.15,
                          child: const ReviewList()),
                      SizedBox(
                        height: size.height * 0.09,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff807AAD), Color(0xffC9C6EF)],
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                      blurRadius: 5.0,
                      offset: const Offset(0, -3),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Rs. 220,000',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.5,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2.0,
                              blurRadius: 5.0,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Text(
                        'See Available Dates',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff807AAD)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
