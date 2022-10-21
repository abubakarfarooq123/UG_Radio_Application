import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/homenavbar.dart';

class Reset_Password extends StatefulWidget {
  const Reset_Password({Key? key}) : super(key: key);

  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              homeNavBar()));
                },
                icon: Icon(
                  Icons.cancel_outlined,
                  color: Colors.white,
                  size: 27,
                ),
              ),
              SizedBox(
                width: 55,
              ),
              Text(
                "Change Password",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
             Container(
                  height: 150,
                  width: 400,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text("Password :",style: GoogleFonts.roboto(
                                color: Colors.black,
                              ),
                              ),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            new Flexible(
                              child: new TextField(
                                decoration: const InputDecoration(
                                    hintText: "Old Password",
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                ),
                                  contentPadding: EdgeInsets.only(top: 20)
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text("New Password :",style: GoogleFonts.roboto(
                                color: Colors.black,
                              ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            new Flexible(
                              child: new TextField(
                                decoration: const InputDecoration(
                                    hintText: "Enter New Password",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                    ),
                                    contentPadding: EdgeInsets.only(top: 20)
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 430,
              ),
              Container(
                height: 40.0,
                width: 280.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color.fromARGB(255, 218, 162, 16),
                  onPressed: () {
                  },

                  child: Text(
                    'Save',
                    style: GoogleFonts.roboto(
                      fontSize: 17.0,
                      color: Colors.white,
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
