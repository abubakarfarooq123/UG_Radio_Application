import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/crew/crew.dart';
import 'package:ug_radio_app/crew/list_crew.dart';

class Create_Crew extends StatefulWidget {
  const Create_Crew({Key? key}) : super(key: key);

  @override
  State<Create_Crew> createState() => _Create_CrewState();
}

class _Create_CrewState extends State<Create_Crew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 190,
                    width: 400,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/bg.jpg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 110,
                    left: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => List_Crew()));
                      },
                      icon: Icon(
                        Icons.cancel,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 90,
                    left: 150,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 110,
                      child: ClipOval(
                        child: Container(
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/p3.jpg",
                                height: 80,
                                width: 80,
                              ),
                              Positioned(
                                left: 13,
                                top: 13,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.camera_enhance_outlined,
                                    color: Colors.white,
                                    size: 34,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: new Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Name :",
                              style: GoogleFonts.roboto(
                                  color: Colors.black, fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          new Flexible(
                            child: new TextFormField(
                                decoration: const InputDecoration(
                              hintText: "Your Name",
                              hintStyle: TextStyle(
                                fontSize: 13,
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: new Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "About :",
                              style: GoogleFonts.roboto(
                                  color: Colors.black, fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          new Flexible(
                            child: new TextFormField(
                                maxLines: 7,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  labelText: "Add addditional details",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Colors.black54,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    Container(
                      height: 40.0,
                      width: 330.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Color.fromARGB(255, 218, 162, 16),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Crew()));
                        },
                        child: Text(
                          'Create',
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
            ],
          ),
        ),
      ),
    );
  }
}
