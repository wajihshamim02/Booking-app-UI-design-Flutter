import 'package:booking_app/Hall%20Detail%20Screen/Componenets/hall_detail_card.dart';
import 'package:booking_app/Hall%20Detail%20Screen/Componenets/hall_detail_page_view.dart';
import 'package:booking_app/Hall%20Detail%20Screen/Componenets/hall_rating.dart';
import 'package:booking_app/Hall%20Detail%20Screen/Componenets/review_list.dart';
import 'package:booking_app/custom_heading_text.dart';
import 'package:booking_app/space_size_box.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.5,
              color: Colors.white,
              child: Stack(
                children: [
                  // SizedBox(
                  //     height: size.height * 0.4,
                  //     width: double.infinity,
                  //     child: HallDetailPageView()),

                  SizedBox(
                    height: size.height * 0.4,
                    width: double.infinity,
                    child: const HallDetailPageView(),
                  ),

                  Positioned(
                      top: size.height * 0.345,
                      left: size.width * 0.1,
                      child: HallDetailCard(
                        hall_name: 'La Casa Banquet',
                      )),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          //height: size.height * 0.07,
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          alignment: Alignment.center,
                          // height: size.height * 0.07,
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
                          //height: size.height * 0.07,
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
            // SizedBox(
            //   height: size.height * 0.050,
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHeadingText(headingText: 'Reviews'),
                  CustomSpace(),
                  CustomRating(),
                  CustomSpace(),
                  Divider(
                    thickness: 0.3,
                    color: Colors.grey,
                  ),
                  CustomSpace(),
                  CustomHeadingText(headingText: "What reviews say"),
                  CustomSpace(),
                  SizedBox(height: size.height * 0.3, child: ReviewList())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
