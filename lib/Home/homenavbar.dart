import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Home/home.dart';
import 'package:ug_radio_app/Library/library_home.dart';
import 'package:ug_radio_app/Noti/notification.dart';
import 'package:ug_radio_app/Record/mic.dart';
import 'package:ug_radio_app/User/profile.dart';

class homeNavBar extends StatefulWidget {
  const homeNavBar({Key? key}) : super(key: key);

  @override

  _homeNavBarState createState() => _homeNavBarState();
}

class _homeNavBarState extends State<homeNavBar> {
  bool? resizeToAvoidBottomInset;
  int currentTab=0;
  final List<Widget> screens =[
    Home(),
    Library(),
    Mic(),
    Notification_UG(),
    Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: false,

    body: PageStorage(
      child: currentScreen,
      bucket: bucket,
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
            "assets/images/micc.jpg",
                height: 70,
          width: 70,
        ),
      ),
      onPressed: (){

      },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      color: Colors.black,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 MaterialButton(
                   minWidth: 60,
                     onPressed:(){
                     setState(() {
                       currentScreen=Home();
                       currentTab=0;
                     });
                     },
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(FontAwesomeIcons.compactDisc,
                         color: currentTab==0
                             ? Color.fromARGB(255, 218, 162, 16)
                             :Colors.white,
                         size: 30,
                       ),
                       Text("Feed",style: GoogleFonts.roboto(
                       color: currentTab==0
                           ? Color.fromARGB(255, 218, 162, 16)
                           :Colors.white
                       ),
                       ),
                     ],
                   ) ,
                 ),
                MaterialButton(
                  minWidth: 40,
                  onPressed:(){
                    setState(() {
                      currentScreen=Library();
                      currentTab=1;
                    });
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.compass,
                        color: currentTab==1
                            ? Color.fromARGB(255, 218, 162, 16)
                            :Colors.white,
                        size: 30,
                      ),
                      Text("Library",style: GoogleFonts.roboto(
                        color: currentTab==1
                            ? Color.fromARGB(255, 218, 162, 16)
                            :Colors.white
                      ),
                      ),
                    ],
                  ) ,
                ),
              ],
            ),
            //Right Tab bar
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 60,
                  onPressed:(){
                    setState(() {
                      currentScreen=Notification_UG();
                      currentTab=3;
                    });
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.bell,
                        color: currentTab==3 ?
                       Color.fromARGB(255, 218, 162, 16)
                      :Colors.white,
                        size: 30,
                      ),
                      Text("Notification",style: GoogleFonts.roboto(
                        color: currentTab==3
                            ? Color.fromARGB(255, 218, 162, 16)
                            :Colors.white,
                      ),
                      ),
                    ],
                  ) ,
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed:(){
                    setState(() {
                      currentScreen=Profile();
                      currentTab=4;
                    });
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.account_circle,
                        color: currentTab==4 ?
                       Color.fromARGB(255, 218, 162, 16)
                      :Colors.white,
                  size: 30,
                      ),
                      Text("Profile",style: GoogleFonts.roboto(
                        color: currentTab==4
                            ? Color.fromARGB(255, 218, 162, 16)
                            :Colors.white
                      ),
                      ),
                    ],
                  ) ,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  }
  }