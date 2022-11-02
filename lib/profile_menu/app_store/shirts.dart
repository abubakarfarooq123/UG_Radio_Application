import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shirts extends StatefulWidget {
  const Shirts({Key? key}) : super(key: key);

  @override
  State<Shirts> createState() => _ShirtsState();
}

class _ShirtsState extends State<Shirts> {
  List images = [
    "candy.jpg",
    "car.jpg",
    "enum.jpg",
  ];

  List images1 = [
    "Gangsta.jpg",
    "money.jpg",
    "bella_chao.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 140) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Container(
                height: 600,
                width: 320,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return GridView.count(
                      childAspectRatio: (itemWidth / itemHeight),
                      crossAxisCount: 2,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // to disable GridView's scrolling
                      children: <Widget>[
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 120,
                                child: Image.asset(
                                  "assets/images/" + images[index],
                                  fit: BoxFit.cover,
                                  height: 90,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text(
                                "UG Radio Bag",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text(
                                "1 Color",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Text(
                                "6.7 \$",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 150,
                                  height: 120,
                                  child: Image.asset(
                                    "assets/images/" + images1[index],
                                    fit: BoxFit.cover,
                                    height: 90,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text(
                                  "UG Radio Cap",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  "7 Color",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 90),
                                child: Text(
                                  "4.7 \$",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
