import 'package:booking_app/sign_in.dart';
import 'package:booking_app/sign_up.dart';
import 'package:booking_app/widgets/customButtons.dart';
import 'package:flutter/material.dart';
// import 'package:travel_app/sign_up.dart';
// import 'package:travel_app/widgets/customButtons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/lightwater.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // radius of 10
                    color: Colors.white // green as background color
                    ),
                child: Icon(
                  Icons.home,
                  size: 50,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.045,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                child: Text(
                  'Enjoy the trip \nwith me',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
            ),
            Center(
              child: Column(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => signup(),
                            ));
                      },
                      child: CustomButtons(textbutton: 'Sign up')),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  InkWell(
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ));
                      },
                      child: CustomButtons(textbutton: 'Sign in')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
