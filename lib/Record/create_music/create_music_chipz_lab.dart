import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Record/create_music/create_music_recording.dart';
import 'package:ug_radio_app/Record/recording.dart';
import 'package:ug_radio_app/Record/save.dart';

class Create_Music_Chipz_Lab extends StatefulWidget {
  const Create_Music_Chipz_Lab({Key? key}) : super(key: key);

  @override
  State<Create_Music_Chipz_Lab> createState() => _Create_Music_Chipz_LabState();
}

class _Create_Music_Chipz_LabState extends State<Create_Music_Chipz_Lab> {
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "UG Radio Beats",
          style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          pressAttention = !pressAttention;
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Create_Music_Chipz_Lab()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: pressAttention ? Colors.grey : Colors.black,
                        ),
                        height: 30,
                        width: 100,
                        child: Center(
                          child: Text(
                            "Beats",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            pressAttention = !pressAttention;
                          });
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Save()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: pressAttention ? Colors.black : Colors.grey,
                          ),
                          height: 30,
                          width: 100,
                          child: Center(
                            child: Text(
                              "Save",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.only(top: 12, left: 60),
                            hintStyle: GoogleFonts.roboto(
                              color: Colors.black,
                            ),
                            hintText: "Search |",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black.withOpacity(0.2),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Music_Recording()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/west.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "West Coast",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Music_Recording()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/tap.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Boombap",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Music_Recording()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 40),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/rap.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Gangsta",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Music_Recording()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 40),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/class.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Classic",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Music_Recording()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 40),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/west.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "West Coast",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Music_Recording()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 40),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/rap.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Gangsta",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Music_Recording()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 40),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/class.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Classic",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.black.withOpacity(0.2),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Create_Music_Recording()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/dp.jpg",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "YoungGrizzly",
                              style: GoogleFonts.roboto(
                                  fontSize: 8, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "NightCrawler",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "183bpm - tyga",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Create_Music_Recording()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/p1.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "James",
                              style: GoogleFonts.roboto(
                                  fontSize: 8, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Sorry",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "183bpm - gangsta",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Create_Music_Recording()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/p2.jpg",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Young",
                              style: GoogleFonts.roboto(
                                  fontSize: 8, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Blaze",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 138,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "93bpm -trap",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Create_Music_Recording()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/p3.jpg",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mike",
                              style: GoogleFonts.roboto(
                                  fontSize: 8, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "DayDreamer",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "183bpm - west coast",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Create_Music_Recording()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/p1.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "James",
                              style: GoogleFonts.roboto(
                                  fontSize: 8, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Sorry",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 77,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "183bpm - tyga",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
