import 'package:booking_app/Categories.dart';
import 'package:booking_app/sliderrr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Commons/space_size_box.dart';
import 'main_customappbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: SizedBox(
        //   width: 210,
        //   height: 60,
        //   child: FloatingActionButton.extended(
        //       backgroundColor: Colors.purple,
        //       onPressed: () {},
        //       label: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Row(
        //             children: [
        //               Icon(Icons.home),
        //             ],
        //           ),
        //           SizedBox(width: MediaQuery.of(context).size.width * 0.05),
        //           Row(
        //             children: [
        //               Icon(Icons.business),
        //             ],
        //           ),
        //           SizedBox(width: MediaQuery.of(context).size.width * 0.05),
        //           Row(
        //             children: [
        //               Icon(Icons.travel_explore),
        //             ],
        //           ),
        //           SizedBox(width: MediaQuery.of(context).size.width * 0.05),
        //           Row(
        //             children: [
        //               Icon(Icons.person),
        //             ],
        //           ),
        //         ],
        //       )),
        // ),
        body: CustomScrollView(slivers: [
      mainCustomAppBar(HeadingText: 'wakoj os erjer'),
      // physics: NeverScrollableScrollPhysics(),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Categories(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'Discover your Destination',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         child: Text(
              //           'All',
              //           style: TextStyle(
              //               fontSize: 16,
              //               fontWeight: FontWeight.bold,
              //               color: Color.fromARGB(255, 117, 117, 117)),
              //         ),
              //         decoration: BoxDecoration(
              //           border: Border(
              //             bottom: BorderSide(color: Colors.blue, width: 3),
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Text(
              //         'Popular',
              //         style: TextStyle(
              //             fontSize: 16,
              //             color: Color.fromARGB(255, 117, 117, 117)),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Text(
              //         'Recommended',
              //         style: TextStyle(
              //             fontSize: 16,
              //             color: Color.fromARGB(255, 117, 117, 117)),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Text(
              //         'MostViewed',
              //         style: TextStyle(
              //             fontSize: 16,
              //             color: Color.fromARGB(255, 117, 117, 117)),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Text(
              //         'Items',
              //         style: TextStyle(
              //             fontSize: 16,
              //             color: Color.fromARGB(255, 117, 117, 117)),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.03,
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(height: 250, child: Sliderr()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(height: 250, child: Sliderr()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'Popular',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(height: 250, child: Sliderr()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'Recommended',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(height: 250, child: Sliderr()),
              ),
              SizedBox(
                height: 100,
              ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: Container(
              //     height: 58.0,
              //     child: Container(
              //       decoration: new BoxDecoration(
              //         color: Color.fromARGB(255, 0, 43, 160),
              //         borderRadius: new BorderRadius.only(
              //           topLeft: const Radius.circular(40.0),
              //           topRight: const Radius.circular(40.0),
              //           bottomLeft: const Radius.circular(40.0),
              //           bottomRight: const Radius.circular(40.0),
              //         ),
              //       ),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         children: [
              //           Icon(
              //             Icons.home,
              //             color: Colors.white,
              //             size: 28,
              //           ),
              //           Icon(
              //             Icons.business,
              //             color: Colors.white,
              //             size: 28,
              //           ),
              //           Icon(
              //             Icons.travel_explore,
              //             color: Colors.white,
              //             size: 28,
              //           ),
              //           Icon(
              //             Icons.person,
              //             color: Colors.white,
              //             size: 28,
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ]));
  }
}
