import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Item_Details extends StatefulWidget {
  const Item_Details({Key? key}) : super(key: key);

  @override
  State<Item_Details> createState() => _Item_DetailsState();
}

class _Item_DetailsState extends State<Item_Details> {
  List<String> bloodGroup = ['S', 'M', 'L', 'XL', 'XXL', 'XXXL'];
  var setvalue;
  String selected = '';
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.withOpacity(0.4),
        title: Text(
          "App Store",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/logo.jpg"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: 380,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/candy.jpg"),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Under World Jacket",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "6.7 \$",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 0.1,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 15),
                          child: Text(
                            "Size:  ",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: DropdownButton(
                            hint: Text(
                              'Please choose size',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            iconSize: 40.0,
                            value: setvalue,
                            onChanged: (newValue) {
                              setState(() {
                                setvalue = newValue;
                              });
                            },
                            items: bloodGroup.map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      selected,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Quantity:  ",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 25,
                          width: 60,
                          child: FloatingActionButton.extended(
                            onPressed: () {
                              setState(() {
                                count = count - 1;
                              });
                            },
                            label: Text(
                              "",
                              style: GoogleFonts.roboto(color: Colors.white),
                            ),
                            icon: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            backgroundColor: Color.fromARGB(255, 218, 162, 16),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$count",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 25,
                          width: 60,
                          child: FloatingActionButton.extended(
                            onPressed: () {
                              setState(() {
                                count = count + 1;
                              });
                            },
                            label: Text(
                              "",
                              style: GoogleFonts.roboto(color: Colors.white),
                            ),
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Color.fromARGB(255, 218, 162, 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 40.0,
                      width: 120.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          'Add to Cart',
                          style: GoogleFonts.raleway(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
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
                        onPressed: () {},
                        child: Text(
                          'Buy Now',
                          style: GoogleFonts.raleway(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
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
