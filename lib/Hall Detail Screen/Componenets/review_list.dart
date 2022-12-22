import 'package:booking_app/Commons/space_size_box.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatefulWidget {
  const ReviewList({super.key});

  @override
  State<ReviewList> createState() => _ReviewListState();
}

class _ReviewListState extends State<ReviewList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Card(
                elevation: 0,
                child: Container(
                    width: size.width * 0.65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                        )),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            'Exceptional ambience, the hospitality of the staff was the best ever.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.verified_user,
                                color: Color(0xff807AAD),
                                size: 12,
                              ),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              const Text(
                                'Hummayun',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 13,
                                child: VerticalDivider(
                                  thickness: 1.5,
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                'Karachi',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
