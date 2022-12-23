import 'package:booking_app/sign_in.dart';
import 'package:booking_app/widgets/customButtons.dart';
import 'package:booking_app/widgets/customTextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/lightwater.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
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
                  child: const Icon(
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
                  child: const Text(
                    'Enjoy the trip \nwith me',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                width: double.infinity,
                height: 460,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'New \nAccount ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 25),
                              ),
                              CircleAvatar(
                                radius: 30,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        CustomTextfield(
                          text_label: 'Email',
                          icon1: Icon(
                            Icons.email_outlined,
                            color: Colors.black,size: 20,
                          ), obscure_text: false,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        CustomTextfield(
                          text_label: 'Username',
                          icon1: Icon(
                            Icons.person_outline,
                            color: Colors.black,size: 20,
                          ), obscure_text: false,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        CustomTextfield(
                          text_label: 'Password',
                          icon1: Icon(
                            Icons.key_sharp,
                            color: Colors.black,size: 20,
                          ), obscure_text: true,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        InkWell (
                         onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => SignIn())));
                         },
                          child: CustomButtons(textbutton: 'Sign up'))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
