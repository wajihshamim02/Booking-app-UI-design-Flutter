import 'package:flutter/material.dart';

class HallDetailPageView extends StatefulWidget {
  const HallDetailPageView({super.key});

  @override
  State<HallDetailPageView> createState() => _HallDetailPageViewState();
}

class _HallDetailPageViewState extends State<HallDetailPageView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      PageView.builder(
        itemBuilder: (context, position) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage('assets/images/hall_1.jpg'),
                    fit: BoxFit.fill)),
          );
        },
        itemCount: 3,
      ),
    ]);
  }
}
