import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 8.0,
        centerTitle: true,
        title: Text(
          "Forgot Password",
          style: GoogleFonts.roboto(
            fontSize: 15.0,
          ),
        ),
      ),
      body: Container(
        height: 800,
        width: 800,
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
                height: 27,
              ),
              Container(
                height: 80,
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
                  padding: const EdgeInsets.only(top: 30, left: 50),
                  child: Text(
                    "Enter your Email below, we’ll send \n you a verify code to your email.",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      height: 120,
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
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 250,top: 20),
                          child: Text("Email",style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),),),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: 'example@gmail.com',
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 270,
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
                          'Send Request',
                          style: GoogleFonts.roboto(
                            fontSize: 19.0,
                            color: Colors.white,
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
      ),
    );
  }
}
