import 'package:flutter/material.dart';

class Customappbar extends StatefulWidget {
  const Customappbar({Key? key}) : super(key: key);

  @override
  _CustomappbarState createState() => _CustomappbarState();
}

class _CustomappbarState extends State<Customappbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff807AAD), Color(0xffC9C6EF)])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 30,
              ),
            ),
            Column(
              children: [
                const Text(
                  'Hong Kong',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      height: 3.5,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Text(
                      'Nov 28 - Nov 30 ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 10,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text('1 room, 2 adults',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
            Container(
              child: Row(
                children: const [
                  Icon(
                    Icons.compare_arrows_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.alt_route,
                    color: Colors.white,
                    size: 28,
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
