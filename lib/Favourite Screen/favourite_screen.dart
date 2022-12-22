import 'package:booking_app/Favourite%20Screen/components/favourite_items.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({ Key? key }) : super(key: key);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  backgroundColor: Colors.grey[200],
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Color(0xff7a71ad), Color(0xffaea8dd)])),
        ),
        centerTitle: true,
        // leading: GestureDetector(
        //   onTap: () => Navigator.pop(context),
        //   child: const Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.white,
        //     size: 20,
        //   ),
        // ),
        title: const Text(
          'Favourite',
          textAlign: TextAlign.justify,
        ),
      ),
      
      body: FavouriteItems(),
      
    );
  }
}