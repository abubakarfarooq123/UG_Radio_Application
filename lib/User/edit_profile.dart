import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Home/homenavbar.dart';
class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black54,
          title: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              homeNavBar()));
                },
                child: Text(
                  "Cancel",
                  style: GoogleFonts.roboto(
                     color: Colors.white,
                    fontSize: 16
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Text("Edit Profile",style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 20
              ),)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 190,
                    width:400,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/bg.jpg"),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                      ],
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
                        child: Container(child: Stack(children: [
                          Image.asset("assets/images/p3.jpg",height: 80,width: 80,),
                          Positioned(
                            left: 13,
                              top: 13,
                              child: IconButton(
                               icon: Icon(Icons.camera_enhance_outlined,
                                color: Colors.white,
                                size: 34,
                              ),
                                onPressed: (){},
                              ),
                          ),
                        ],
                        ),
                      ),
                      )
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: new Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Name :",
                                style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16
                              ),),
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
                                  )
                                ),
                                ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: new Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Username :",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16
                                ),),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            new Flexible(
                              child: new TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "@abubaker123",
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: new Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Location :",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16
                                ),),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            new Flexible(
                              child: new TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Location",
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: new Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "About :",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16
                                ),),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            new Flexible(
                              child: new TextFormField(
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                    hintText: "Additional info. about you",
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 160,
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
                            'Update',
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
