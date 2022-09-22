import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/User/signup_artist.dart';

import 'login.dart';

class SignUpAs extends StatefulWidget {
  const SignUpAs({Key? key}) : super(key: key);

  @override
  State<SignUpAs> createState() => _SignUpAsState();
}

class _SignUpAsState extends State<SignUpAs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                child: Image.asset(
                  "assets/images/logo.jpg",
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                    "To all your questions, music is the answer",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 12,

                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70,right: 140),
              child: Text(
                  "Become Legendary !",
                style: GoogleFonts.aBeeZee(
                  color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
                ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            child:Container(
              height: 40.0,
              width: 320.0,
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
                              SignUp()));
                },
                child: Text(
                  'Sign Up as Fan',
                  style: GoogleFonts.raleway(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
                ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child:Container(
                height: 40.0,
                width: 320.0,
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
                                SignUp()));
                  },
                  child: Text(
                    'Sign Up as Artist',
                    style: GoogleFonts.raleway(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        "Already Have an Account? ",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 13,
                        ),),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login()));
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.roboto(
                            color: Color.fromARGB(255, 218, 162, 16),
                            fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
