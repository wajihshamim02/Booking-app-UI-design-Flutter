

import 'package:booking_app/forgot_password.dart';
import 'package:booking_app/home_screen1.dart';
import 'package:booking_app/theme/themecolor.dart';
import 'package:booking_app/utilis/app_colors.dart';
import 'package:booking_app/widgets/customButtons.dart';
import 'package:booking_app/widgets/customTextfield.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                                'Sign In',
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
                          text_label: 'Password',
                          
                          icon1: Icon(
                            Icons.key_outlined,
                            color: Colors.black,size: 20,
                          ), obscure_text: true,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => ForgotPassword())));
                              },
  
                              child: Text('Forgot Password ?',style: TextStyle(color:Color(AppColors.primaryDark),fontSize: 15),))),
                        ),
                         SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        InkWell
                        (
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        } ,
                          child: CustomButtons(textbutton: 'Sign in',)
                          ),
                         SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text('or sign in with',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
    
                         SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Image.asset('assets/images/google.png',height: 25,width: 40, ),
                             Image.asset('assets/images/facebook.png',height: 25,width: 40, ),
                             Image.asset('assets/images/twitter.png',height: 25,width: 40, ),
                          ],
                        )
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