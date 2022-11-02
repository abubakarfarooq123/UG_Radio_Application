import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Create_Music_Track_Detail extends StatefulWidget {
  const Create_Music_Track_Detail({Key? key}) : super(key: key);

  @override
  State<Create_Music_Track_Detail> createState() =>
      _Create_Music_Track_DetailState();
}

class _Create_Music_Track_DetailState extends State<Create_Music_Track_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '''    Add song name, add cover 
             and a description''',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 100),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 150,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage("assets/images/coverrr.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, right: 20),
                          child: IconButton(
                            icon: Icon(
                              Icons.add_circle,
                              color: Color.fromARGB(255, 218, 162, 16),
                              size: 60,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Add Cover",
                          style: GoogleFonts.roboto(
                              color: Color.fromARGB(255, 218, 162, 16),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "Track Name",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: TextFormField(
                  decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "Enter Track Description",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: TextFormField(
                  maxLines: 6,
                  decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Container(
                  height: 40.0,
                  width: 320.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    color: Color.fromARGB(255, 218, 162, 16),
                    onPressed: () {},
                    child: Text(
                      'Post',
                      style: GoogleFonts.raleway(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
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
