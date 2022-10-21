import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/chat/engage_inbox.dart';

class Engage extends StatefulWidget {
  const Engage({Key? key}) : super(key: key);

  @override
  State<Engage> createState() => _EngageState();
}

class _EngageState extends State<Engage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.only(top: 12, left: 60),
                        hintStyle: GoogleFonts.roboto(
                          color: Colors.black,
                        ),
                        hintText: "Search Chats.......",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 40,
                  width: 400,
                  color: Colors.grey.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text(
                          "123",
                          style: GoogleFonts.roboto(
                              color: Colors.grey, fontSize: 13),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "People Online",
                          style: GoogleFonts.roboto(
                              color: Colors.black54, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Engage_IB()));
                },
                child: Container(
                  height: 80,
                  width: 400,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/dow.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Public",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          SizedBox(height: 10,),
                          Text(
                                "Discuss Everything !",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 11,
                                ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(
                          "5:11 PM",
                          style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Engage_IB()));
                },
                child: Container(
                  height: 80,
                  width: 400,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/un.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Collaborations",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Find artists to collab with !",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 11,
                              ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:80),
                        child: Text(
                          "5:11 PM",
                          style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Engage_IB()));
                },
                child: Container(
                  height: 80,
                  width: 400,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/mus.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Battles",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Find an Opponent !",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 11,
                              ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(
                          "5:11 PM",
                          style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Engage_IB()));
                },
                child: Container(
                  height: 80,
                  width: 400,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/b.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Collaborations",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Find artists to collab with !",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 11,
                              ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(
                          "5:11 PM",
                          style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Engage_IB()));
                },
                child: Container(
                  height: 80,
                  width: 400,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/ijij.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Magic",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Tag goes here..........",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 11,
                              ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: Text(
                          "5:11 PM",
                          style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap:(){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Engage_IB()));
                } ,
                child: Container(
                  height: 80,
                  width: 400,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/b.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Collaborations",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Find artists to collab with !",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 11,
                              ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(
                          "5:11 PM",
                          style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 11),
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
