import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../User/login.dart';
import '../User/signupAs.dart';

class Intro_Slider4 extends StatelessWidget {
  const Intro_Slider4({Key? key}) : super(key: key);

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
                child: Image.asset("assets/images/logo.jpg",
                  fit: BoxFit.cover,
                  height: 200,

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30,left: 10),
              child:
              Row(
                children: [
                  Text("\u266B",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Import your tracks to boost to a wider audience.",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
              child:
              Row(
                children: [
                  Text("\u266B",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text(
                      '''Follow artists, build alliances and create your own
crew.''',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 15,left: 10),
              child:
              Row(
                children: [
                  Text("\u266B",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Get hot tracked to live radio.",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
              child:
              Row(
                children: [
                  Text("\u266B",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text('''Chat with other artists, build fan groups, meet 
famous artists.''',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 10),
              child:
              Row(
                children: [
                  Text("\u266B",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("And much more.............",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100,left: 20),
              child:
              Row(
                children: [
                  Container(
                    height: 40.0,
                    width: 120.0,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Login()));
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.raleway(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 40.0,
                    width: 120.0,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      color: Color.fromARGB(255, 218, 162, 16),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SignUpAs()));
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.raleway(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
