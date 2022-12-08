import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HallItemContainer extends StatefulWidget {
  String textt;
  String text3;
  HallItemContainer({required this.textt, required this.text3});

  @override
  State<HallItemContainer> createState() => _HallItemContainerState();
}

class _HallItemContainerState extends State<HallItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color(0xffC9C6EF).withOpacity(0.5),
                spreadRadius: 2.0,
                blurRadius: 5.0,
                offset: const Offset(0, 3),
              ),
            ]),
            height: 330,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/water1.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 242, 249, 255),
                  ),
                  width: double.infinity,
                  height: 128,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          widget.textt,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                    size: 25,
                                  ),
                                  Text(
                                    'Hong Kong, Karachi',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\Rs 80',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Per Night',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            Icon(Icons.star, color: Colors.red),
                            Icon(Icons.star, color: Colors.red),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.002,
                            ),
                            Text(
                              '4/5 reviews',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            left: 270,
            top: 190,
            child: Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff807AAD), Color(0xffC9C6EF)]),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 30,
              ),
            )),
      ],
    );
  }
}
