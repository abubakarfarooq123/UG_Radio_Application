import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Record/chipz_lab.dart';

class Battles extends StatefulWidget {
  const Battles({Key? key}) : super(key: key);

  @override
  State<Battles> createState() => _BattlesState();
}

class _BattlesState extends State<Battles> {
  bool clicked = false;
  bool clicked1 = false;
  bool clicked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.cancel_outlined,
            size: 28,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 28,
            ),
          ),
        ],
        title: Text(
          "Choose opponent",
          style: GoogleFonts.roboto(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 150,
                color: Colors.grey.withOpacity(0.2),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            clicked = !clicked;
                            clicked1 = false;
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: clicked ? Color.fromARGB(255, 218, 162, 16): Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(Icons.supervised_user_circle_rounded,
                                    color: Colors.white,
                                    size: 50),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child:Text(
                                '''Random 
Oponent''',

                                style:GoogleFonts.roboto(
                                    color: Colors.white,
                                  wordSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                    ),
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            clicked = false;
                            clicked1 = !clicked1;
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: clicked1 ? Color.fromARGB(255, 218, 162, 16) : Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(Icons.share,
                                    color: Colors.white,
                                    size: 40),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child:Text(
                                  '''Send Via 
Social Media''',

                                  style:GoogleFonts.roboto(
                                    color: Colors.white,
                                    wordSpacing: 1,
                                    fontWeight: FontWeight.bold,
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
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            clicked = false;
                            clicked1 = false;
                            clicked2=!clicked2;
                          });
                        },
                        child: Container(
                          height: 60,
                          width: 370,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomLeft:Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                            color: clicked2?Color.fromARGB(255, 218, 162, 16):Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/images/p1.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Text(
                                        "Conflict",
                                        style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            color: Colors.black
                                        ),
                                      ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Text(
                                          "Raper | ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 12,
                                              color: Colors.black
                                          ),

                                        ),
                                        Text(
                                          "Jazz | ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 12,
                                              color: Colors.black
                                          ),

                                        ),
                                        Text(
                                            "Calefornia",
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                color: Colors.black
                                            ),

                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 380,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Chipz_Lab()));
                },
                child: Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 218, 162, 16),
                  ),
                  child: Center(
                    child: Text("Continue",style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20
                    ),),
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
