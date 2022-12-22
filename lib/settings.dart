// import 'dart:ffi';

import 'package:booking_app/Commons/settings_container.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 244, 244, 244),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:  Colors.transparent,
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.edit_calendar_outlined,color: Colors.grey.shade800,)
                ],
              ),
            ),
            preferredSize: const Size.fromHeight(0.0)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/wahaj.png',),
                        fit: BoxFit.cover
                       ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                 Text(
                  'M.Wajih Shamim',
                  style:  TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold,color: Colors.grey.shade800),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsContainer(
                Icon_Settings: Icon(
                  Icons.mobile_friendly,
                  color: Colors.purple,
                ),
                Text_settings: 'Appearance',
              ),
              SettingsContainer(
                Icon_Settings: Icon(
                  Icons.book_online,
                  color: Colors.green,
                ),
                Text_settings: 'Bookings',
              ),
              SettingsContainer(
                Icon_Settings: Icon(Icons.favorite,color: Colors.red,),
                Text_settings: 'Favourites',
              ),
              SettingsContainer(
                Icon_Settings: Icon(
                  Icons.privacy_tip,
                  color: Colors.orange,
                ),
                Text_settings: 'Privacy',
              ),
                SettingsContainer(
                Icon_Settings: Icon(
                  Icons.logout_outlined,
                  color: Colors.grey,
                ),
                Text_settings: 'Log out',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
