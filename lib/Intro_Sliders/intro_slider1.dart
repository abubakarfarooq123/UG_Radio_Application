import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Intro_Sliders/intro_slider_2.dart';

class Intro_Slider1 extends StatelessWidget {
  PageController _pageController= new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/phone.jpg",
              fit: BoxFit.cover,
                height: 200,

              ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 20, 0),
                child: Text(
                  "Welcome to UG Radio",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(children: [
              Padding(
              padding: const EdgeInsets.fromLTRB(40, 220, 40, 0),
              child: new Container(
                height: 200.0,
                width: 500,
                color: Colors.transparent,
                child: new Container(
                  decoration: new BoxDecoration(
                      color: Color.fromARGB(255, 51, 51, 51),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0),
                      )),
                  child: Column(children: [
                    new Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          "Create Account, listen and Support !",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 12, 18, 18),
                      child: Text(
                        "Listen to music uploaded by artists all around the World, send icons, comment and help them grow.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: 220,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Color.fromARGB(255, 218, 162, 16),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Intro_Slider2()));
                        },
                        child: Center(
                          child: Text(
                            "Next",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
                  ),
                ),
              ),
            ),
      ],

    ),
                    ],
        ),
      ),
    );
  }
}
