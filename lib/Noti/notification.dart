import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Notification_UG extends StatefulWidget {
  const Notification_UG({Key? key}) : super(key: key);

  @override
  State<Notification_UG> createState() => _Notification_UGState();
}

class _Notification_UGState extends State<Notification_UG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Notifications",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 23
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 270,top: 10),
                child: Text(
                  "Today",style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14,
                ),),
              ),

        Padding(
          padding: const EdgeInsets.only(left: 15,top: 10),
          child: Container(
            height: 60,
            width: 330,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
                bottomLeft:Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/dp.jpg",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 20),
                      child: Text(
                          "Jayden just liked your video",
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          color: Colors.black
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 85,top: 5),
                      child: Text(
                        "4h Ago",
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                ClipRRect(
                  child: Image.asset(
                    "assets/images/candy.jpg",
                    height: 40,
                    width: 70,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft:Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/p1.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text(
                              "Lyon just commented on your video",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 135,top: 5),
                            child: Text(
                              "6h Ago",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/bella_chao.jpg",
                          height: 40,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft:Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/p2.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text(
                              "Cameron wants to collab",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 85,top: 5),
                            child: Text(
                              "4h Ago",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/enum.jpg",
                          height: 40,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft:Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/dp.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text(
                              "Jayden just liked your video",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 85,top: 5),
                            child: Text(
                              "4h Ago",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/candy.jpg",
                          height: 40,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270,top: 10),
                child: Text(
                  "This Week",style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14,
                ),),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft:Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/dp.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text(
                              "Jayden just liked your video",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 85,top: 5),
                            child: Text(
                              "4h Ago",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/candy.jpg",
                          height: 40,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft:Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/p1.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text(
                              "Lyon just commented on your video",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 135,top: 5),
                            child: Text(
                              "6h Ago",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/bella_chao.jpg",
                          height: 40,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft:Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/p2.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text(
                              "Cameron wants to collab",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 85,top: 5),
                            child: Text(
                              "4h Ago",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/enum.jpg",
                          height: 40,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft:Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/dp.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text(
                              "Jayden just liked your video",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 85,top: 5),
                            child: Text(
                              "4h Ago",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/candy.jpg",
                          height: 40,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
