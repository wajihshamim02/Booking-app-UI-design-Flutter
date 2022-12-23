import 'package:booking_app/widgets/customTextfield.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  DateTime date1 = DateTime(2000,02,13);
  int gender = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Color(0xff7a71ad), Color(0xffaea8dd)])),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: const Text(
          'Edit Profile',
          textAlign: TextAlign.justify,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/wahaj.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        'M.Wajih Shamim',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                  Positioned(
                      right: 24,
                      bottom: 42,
                      child: CircleAvatar(
                        maxRadius: 18,
                        child: Icon(
                          Icons.edit,
                          size: 22,
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  CustomTextfield(
                    text_label: 'Username',
                    icon1: Icon(
                      Icons.person_outline,
                      color: Colors.black,
                      size: 20,
                    ),
                    obscure_text: false,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  CustomTextfield(
                    text_label: 'Email',
                    icon1: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                    obscure_text: false,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  CustomTextfield(
                    text_label: 'Password',
                    icon1: Icon(
                      Icons.key,
                      color: Colors.black,
                      size: 20,
                    ),
                    obscure_text: true,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Gender",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff7a71ad)),
                              value: 1,
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = 1;
                                });
                              },
                            ),
                            Text("Male"),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff7a71ad)),
                              value: 2,
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = 2;
                                });
                              },
                            ),
                            Text("Female"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date of Birth",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text("${date1.day}-${date1.month}-${date1.year}",style: TextStyle(fontSize: 15),),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        InkWell(
                          onTap: () async {
                            DateTime? datepicked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1930),
                                lastDate: DateTime(2023),
                                builder: (context, child) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                      colorScheme: ColorScheme.light(
                                        primary:
                                            Color(0xff7a71ad), 
                                      ),
                                   
                                    ),
                                    child: child!,
                                  );
                                });

                            if (datepicked != null) {
                            //  print("Date Picked ${datepicked.day}-${datepicked.month}-${datepicked.year}");
                             setState(() {
                               date1  = datepicked;
                             });
                            }
                          },
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [Color(0xff7a71ad), Color(0xffaea8dd)],
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "Edit",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
