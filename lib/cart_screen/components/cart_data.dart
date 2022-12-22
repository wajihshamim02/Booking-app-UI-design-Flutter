import 'package:flutter/material.dart';

class CartData extends StatefulWidget {
  const CartData({Key? key}) : super(key: key);

  @override
  _CartDataState createState() => _CartDataState();
}

class _CartDataState extends State<CartData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/hall_1.jpg'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Galaxy Hall",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                //    Icon(
                                //   Icons.delete_outline,
                                //   color: Colors.grey,
                                //   size: 20,
                                // ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                ),
                                Text(
                                  'PECHS',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'No of People: 1000',
                              style: TextStyle(
                                  color: Color(0xff7a71ad),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Time: 8:00AM - 12:00AM',
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                            ),
                              SizedBox(
                              height: 5,
                            ),
                             Text(
                              'RS 10000',
                              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff7a71ad),),
                            )
                          ],
                        ),
                      ],
                    ),
                 
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
