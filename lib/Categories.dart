import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Catogories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              const  CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 238, 238, 238),
                  radius: 25,
                  child: Icon(
                    Icons.paragliding,
                    size: 25,
                    color: Colors.blue,
                  ),
                ),
             const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Lawn',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 129, 128, 128),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 238, 238, 238),
                  child: Icon(
                    Icons.beach_access_sharp,
                    size: 25,
                    color: Color.fromARGB(255, 255, 145, 0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'Hall',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 129, 128, 128),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 238, 238, 238),
                  child: Icon(
                    Icons.park,
                    size: 25,
                    color: Color.fromARGB(255, 22, 170, 8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Banquet',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 129, 128, 128),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 238, 238, 238),
                  radius: 25,
                  child: Icon(
                    Icons.camera_outdoor_sharp,
                    size: 25,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Marquee',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 129, 128, 128),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 238, 238, 238),
                  radius: 25,
                  child: Icon(
                    Icons.home,
                    size: 25,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ballroom',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 129, 128, 128),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
