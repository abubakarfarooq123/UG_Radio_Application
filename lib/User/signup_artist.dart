import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Register",
          style: GoogleFonts.roboto(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 7,
              ),
          Container(
                  height: 40,
                  width: 320,
                  decoration: new BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13,left: 50),
                    child: Text("Fill your information on this to register.",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 12,

                    ),
                    ),
                  ),
                ),
              SizedBox(
                height: 30,
              ),
             Container(
                  height: 500,
                  width: 320,
                  decoration: new BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right: 250),
                          child: Text("UserName",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'james123',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                                ),
                                fillColor: Colors.white,
                                errorStyle: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 15.0,

                                ),
                              ),
                            ),
                  ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right: 270),
                          child: Text("Name",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: 'James Adam',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                              ),
                              fillColor: Colors.white,
                              errorStyle: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 15.0,

                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right: 270),
                          child: Text("Email",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: 'james123@gmail.com',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                              ),
                              fillColor: Colors.white,
                              errorStyle: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 15.0,

                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right: 250),
                          child: Text("Password",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: '*********',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                              ),
                              fillColor: Colors.white,
                              errorStyle: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 15.0,

                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right: 200),
                          child: Text("Confirm Password",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: '********',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                              ),
                              fillColor: Colors.white,
                              errorStyle: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 40.0,
                          width: 320.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: Color.fromARGB(255, 218, 162, 16),
                            onPressed: () {
                            },

                            child: Text(
                              'Register',
                              style: GoogleFonts.roboto(
                                fontSize: 17.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("Or",
                          style: GoogleFonts.roboto(
                          color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ),
                ),
              
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Sign Up Using",style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 14
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70,top: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset('assets/images/google1.png',
                            width: 60.0, height: 60.0),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset('assets/images/Facebook-logo.png',
                            width: 120.0, height: 120.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
