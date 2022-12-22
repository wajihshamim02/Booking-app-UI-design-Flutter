import 'package:booking_app/Favourite%20Screen/favourite_screen.dart';
import 'package:booking_app/booking123/bookin_screen.dart';
import 'package:booking_app/cart_screen/cart_screen.dart';
import 'package:booking_app/home_screen1.dart';
import 'package:booking_app/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late int currentPage = 0;
  late TabController tabController;
  List colors = [
    Colors.purple,
    Colors.purple,
    Colors.purple,
    Colors.purple,
    Colors.purple,
    // Colors.pink,
  ];

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(
      length: 5,
      vsync: this,
    );

    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color unselectedColor = colors[currentPage].computeLuminance() < 0.5
        ? Colors.black
        : Colors.black;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        //   backgroundColor: Colors.black,
        // ),
        body: BottomBar(
          child: TabBar(
            physics: NeverScrollableScrollPhysics(),
            indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
            controller: tabController,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    color: currentPage == 0
                        ? colors[0]
                        : currentPage == 1
                            ? colors[1]
                            : currentPage == 2
                                ? colors[2]
                                : currentPage == 3
                                    ? colors[3]
                                    : currentPage == 4
                                        ? colors[4]
                                        : unselectedColor,
                    width: 5),
                insets: EdgeInsets.fromLTRB(16, 0, 16, 8)),
            tabs: [
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.home,
                  color: currentPage == 0 ? colors[0] : unselectedColor,
                )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.badge,
                  color: currentPage == 1 ? colors[1] : unselectedColor,
                )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.favorite,
                  color: currentPage == 2 ? colors[2] : unselectedColor,
                )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.card_travel,
                  color: currentPage == 3 ? colors[3] : unselectedColor,
                )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.person,
                  color: currentPage == 4 ? colors[4] : unselectedColor,
                )),
              ),
              // SizedBox(
              //   height: 55,
              //   width: 40,
              //   child: Center(
              //       child: Icon(
              //     Icons.person,
              //     color: currentPage == 4 ? colors[4] : unselectedColor,
              //   )),
              // ),
            ],
          ),
          fit: StackFit.expand,
          // icon: Center(
          //   child: IconButton(
          //     padding: EdgeInsets.zero,
          //     onPressed: null,
          //     icon: Icon(
          //       Icons.arrow_upward_rounded,
          //       color: unselectedColor,
          //     ),
          //   ),
          // ),
          borderRadius: BorderRadius.circular(500),
          duration: Duration(seconds: 1),
          // curve: Curves.decelerate,
          showIcon: true,
          width: MediaQuery.of(context).size.width * 0.8,
          barColor: colors[currentPage].computeLuminance() > 0.5
              ? Color(0xffC9C6EF)
              : Color(0xffC9C6EF),

          start: 2,
          end: 0,
          bottom: 10,

          alignment: Alignment.bottomCenter,
          iconHeight: 35,
          iconWidth: 35,
          // reverse: false,
          // hideOnScroll: true,
          // scrollOpposite: false,
          onBottomBarHidden: () {},
          onBottomBarShown: () {},

          body: (context, controller) => TabBarView(
            controller: tabController,
            // dragStartBehavior: DragStartBehavior.down,
            // physics: const BouncingScrollPhysics(),
            children: [
              HomeScreen(),
              BookinScreen(),
              FavouriteScreen(),
              CartScreen(),
              Settings(),
            ],
          ),
        ),
      ),
    );
  }
}
