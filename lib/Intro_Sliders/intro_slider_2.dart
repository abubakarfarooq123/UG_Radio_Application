import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Intro_Sliders/intro_slider3.dart';

import 'intro_slider1.dart';

class Intro_Slider2 extends StatelessWidget {
  const Intro_Slider2({Key? key}) : super(key: key);

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
                child: Image.asset("assets/images/23.jpg",
                  fit: BoxFit.cover,
                  height: 200,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 30, 20, 0),
              child: Text(
                "UG provides best platform",
                style: GoogleFonts.aBeeZee(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 235, 40, 0),
              child: new Container(
                height: 200.0,
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
                        child: new Text(
                          "Upload  Track and Share",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 12, 18, 18),
                      child: Text(
                        "Upload your voice whenever you want as UG Radio provide the best platform for recognization.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.2,

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
                              MaterialPageRoute(builder: (context) => Intro_Slider3()));
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
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
