// import 'dart:ffi';

import 'package:booking_app/customappbar.dart';
import 'package:booking_app/info.dart';
import 'package:flutter/material.dart';

import 'hall-item_container.dart';

class HallsItem extends StatefulWidget {
  const HallsItem({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HallsItemState createState() => _HallsItemState();
}

class _HallsItemState extends State<HallsItem> {
  double _highvalue = 0;
  double _lowvalue = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Customappbar(),
          Container(
            height: size.height * 0.06,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Filter",
                  style: TextStyle(color: Color(0xff807AAD)),
                ),
                const VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                InkWell(
                  onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                    context: context,
                    builder: (context) => StatefulBuilder(
                      builder: (context, state) {
                        return Container(
                          height: size.height * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    InkWell(
                                        onTap: () => Navigator.pop(context),
                                        child: const Icon(Icons.close)),
                                    SizedBox(
                                      width: size.width * 0.05,
                                    ),
                                    const Text(
                                      "Budget",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.05,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Rs. " +
                                      _lowvalue.toString() +
                                      " - " +
                                      "Rs. " +
                                      _highvalue.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                              ),
                              RangeSlider(
                                activeColor:Color(0xff807AAD),
                                // inactiveColor:Color(0xff807AAD),
                                labels: RangeLabels(_lowvalue.toString(),
                                    _highvalue.toString()),
                                values: RangeValues(_lowvalue, _highvalue),
                                min: 0,  
                                max: 10000,
                                divisions: 20,
                                onChanged: (RangeValues values) {
                                  state(() {});
                                  setState(() {
                                    _lowvalue = values.start;
                                    _highvalue = values.end;
                                  });
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff807AAD)),
                                      // color: Colors.purple,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                        child: Text(
                                      'Clear',
                                      style: TextStyle(
                                          color: Color(0xff807AAD),
                                          fontSize: 18),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xff807AAD),
                                        Color(0xffC9C6EF)
                                      ]),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Filter',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text(
                        "Price",
                        style: TextStyle(color: Color(0xff807AAD)),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff807AAD))
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                InkWell(
                  onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                    context: context,
                    builder: (context) => StatefulBuilder(
                      builder: (context, state) {
                        return Container(
                          height: size.height * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    InkWell(
                                        onTap: () => Navigator.pop(context),
                                        child: const Icon(Icons.close)),
                                    SizedBox(
                                      width: size.width * 0.05,
                                    ),
                                    const Text(
                                      "Sort by",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.05,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 
                                  children: [
                                    SizedBox(
                                      height: size.height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Best Matches',
                                          style: TextStyle(
                                              color: Color(0xff807AAD),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: Color(0xff807AAD),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: size.height*0.03,),
                                      Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lowest Price',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: size.height*0.03,),
                                      Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Highest Price',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: size.height*0.03,),
                                      Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Top guest Rating',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                     SizedBox(height: size.height*0.03,),
                                      Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Stars(5 to 0)',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text(
                        "Price Rate",
                        style: TextStyle(color: Color(0xff807AAD)),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff807AAD))
                    ],
                  ),
                ),
              ],
            ),
          ),
          HallItemContainer(textt: 'Blue Diamond', text3: 'shamim')
        ],
      ),
    ));
  }
}
