import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Home/active_contest.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text(
            "Discover",
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.store,
                  color: Colors.white,
                  size: 30,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Genres",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 170),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "See More >",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 50,
                      width: 90,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Jazz",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 15),
                    child: Container(
                      height: 50,
                      width: 90,
                      color: Colors.purple,
                      child: Center(
                        child: Text(
                          "Classic",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 15),
                    child: Container(
                      height: 50,
                      width: 90,
                      color: Colors.deepOrangeAccent,
                      child: Center(
                        child: Text(
                          "Pop",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Recommendations",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 100),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Active_Contest()));
                      },
                      child: Text(
                        "See More >",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 220,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/mic.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '''The Micheal style
    Ben Foakes''',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          height: 220,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/v.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '''Feel you everyday
          Anjelina''',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          height: 220,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/lov.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '''The big bang
       Clark''',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 270),
                child: Text(
                  "Author",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/p3.jpg"),
                    ),
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/p2.jpg"),
                    ),
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/p1.png"),
                    ),
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
