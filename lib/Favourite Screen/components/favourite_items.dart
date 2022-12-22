// import 'dart:js_util';

import 'package:flutter/material.dart';

class FavouriteItems extends StatefulWidget {
  const FavouriteItems({Key? key}) : super(key: key);

  @override
  _FavouriteItemsState createState() => _FavouriteItemsState();
}

class _FavouriteItemsState extends State<FavouriteItems> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => Column(
        children: [
          SizedBox(height: size.height * 0.03),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/hall_1.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      left: 7,
                      top: 5,
                      child: Container(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Galaxy Hall',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                      ),
                      Text('Karachi'),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                colors: [Color(0xff7a71ad), Color(0xffaea8dd)])

                            // color: Color(0xff7a71ad),
                            ),
                        child: Center(
                            child: Text(
                          "RS 11230",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(width: size.width * 0.1),
                      Text("Rating 4.5")
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
