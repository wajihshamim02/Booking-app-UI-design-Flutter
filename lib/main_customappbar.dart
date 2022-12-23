// import 'package:booking_app/diff_project_code/hotel_search_screen.dart';
import 'package:booking_app/Hall%20Detail%20Screen/hall_detail_screen.dart';
import 'package:booking_app/Halls%20items/hall-item_container.dart';
import 'package:booking_app/Halls%20items/halls_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mainCustomAppBar extends StatefulWidget {
  final String HeadingText;
  const mainCustomAppBar({super.key, required this.HeadingText});

  @override
  State<mainCustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<mainCustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      pinned: true,
      floating: true,
      snap: false,
      toolbarHeight: 118,
      title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Are you planning',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'an event ? ',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 38,
                      backgroundColor: Color.fromARGB(255, 238, 238, 238),
                      backgroundImage:
                          AssetImage('assets/images/hall_icon.jpg'),
                      // child: Icon(
                      //   Icons.person,
                      //   size: 35,
                      //   color: Colors.blue,
                      // ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ])),
      bottom: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 232, 232),
                    borderRadius: BorderRadius.circular(25)),
                height: 52,
                width: double.infinity,
                child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HallsItem(),)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Discover a hall',
                              style: TextStyle(color: Colors.grey,fontSize: 18),
                            ),
                          ],
                        )),
                        FaIcon(
                          FontAwesomeIcons.sliders,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
