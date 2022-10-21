import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Home/homenavbar.dart';
import 'package:ug_radio_app/menu/reset_password.dart';

class Settigs extends StatefulWidget {
  const Settigs({Key? key}) : super(key: key);

  @override
  State<Settigs> createState() => _SettigsState();
}

class _SettigsState extends State<Settigs> {
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
                  width: 80,
                ),
                Text(
                  "Settings",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Connect",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.white,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Follow Us on IG",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Follow Us on Youtube",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Invite Friends",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 210,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Rate UG Radio",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 205,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "Account",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.white,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Reset_Password()));
                    },
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Change Password",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Change Email",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 205,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "More",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.white,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "FAQ",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 260,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "UG Radio Community Rules",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 125,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Privacy Center",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Log Out",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
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
