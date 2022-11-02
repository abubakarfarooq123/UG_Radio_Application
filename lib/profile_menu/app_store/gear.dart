import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Home/home.dart';
import 'package:ug_radio_app/profile_menu/app_store/all.dart';
import 'package:ug_radio_app/profile_menu/app_store/caps.dart';
import 'package:ug_radio_app/profile_menu/app_store/huddies.dart';
import 'package:ug_radio_app/profile_menu/app_store/shirts.dart';

class Gear extends StatefulWidget {
  const Gear({Key? key}) : super(key: key);

  @override
  State<Gear> createState() => _GearState();
}

class _GearState extends State<Gear> with TickerProviderStateMixin {
  bool pressAttention = false;
  bool selectedButton = true;

  List images = [
    "candy.jpg",
    "car.jpg",
    "enum.jpg",
  ];

  List images1 = [
    "Gangsta.jpg",
    "money.jpg",
    "bella_chao.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 140) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.withOpacity(0.4),
        title: Text(
          "App Store",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/logo.jpg"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Align(
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicator: CircleTabIndicator(color: Colors.black, radius: 4),
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Caps",
                    ),
                    Tab(
                      text: "Huddies",
                    ),
                    Tab(
                      text: "Shirts",
                    ),
                  ],
                  labelStyle:
                      GoogleFonts.roboto(color: Colors.black, fontSize: 14),
                  labelPadding: EdgeInsets.only(left: 30, right: 30),
                  isScrollable: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 600,
              child: TabBarView(
                controller: _tabController,
                children: [
                  All_items(),
                  Caps(),
                  Shirts(),
                  Huddies(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
