import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Home/homenavbar.dart';
import 'package:ug_radio_app/User/signupAs.dart';

import 'forget.dart';

class Login  extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      systemNavigationBarColor: Colors.black, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 250, 0),
                    child: Image.asset("assets/images/logo.jpg",
                      height:130 ,
                      width: 130,),
                  ),
                  Center(
                    child: Padding(padding: EdgeInsets.fromLTRB(10, 20, 190, 30),
                      child: Text(
                        "Welcome Back !!!",
                        style:GoogleFonts.almendra(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            ClipRRect(
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0)),
              child: Container(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: new Form(
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.fromLTRB(10, 10, 250, 10),
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.roboto(
                                      color: Colors.indigo,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      hintText: 'Enter email id',
                                      errorStyle: GoogleFonts.roboto(
                                        color: Colors.redAccent,
                                        fontSize: 15.0,
                                      ),
                                      icon: Icon(
                                        FontAwesomeIcons.envelope,
                                        color: Color.fromARGB(255, 218, 162, 16),
                                      ),
                                    ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                    autofocus: false,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      errorStyle: GoogleFonts.roboto(
                                        color: Colors.redAccent,
                                        fontSize: 15.0,
                                      ),
                                      icon: Icon(
                                        FontAwesomeIcons.lock,
                                        color: Color.fromARGB(255, 218, 162, 16),
                                      ),
                                    ),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Center(
                                child: Container(
                                  height: 40.0,
                                  width: 340.0,
                                  // ignore: deprecated_member_use
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => homeNavBar()));
                                    },
                                    color: Color.fromARGB(1000, 218, 162, 16),
                                    child: Text(
                                      'Login',
                                      style: GoogleFonts.roboto(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 10.0,
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Forget()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(3, 20, 180, 30),
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14.0,
                                      color: Color.fromARGB(255, 218, 162, 16),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Don't have an account? ",
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey,
                                          fontSize: 14
                                      ),),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpAs()));
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: GoogleFonts.roboto(
                                            color: Color.fromARGB(255, 218, 162, 16),
                                            fontSize: 14
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
