import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/Home/crew.dart';
import 'package:ug_radio_app/Home/home.dart';
import 'dart:math' as math;
import 'dart:math';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin  {
  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if(duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(":");
  }

  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    final player = AudioCache(prefix: "assets/sounds");
    final url = await player.load('side_to_sid.wav');
    audioPlayer.setSourceUrl(url.path);

    // final result = await FilePicker.platform.pickFiles();
    //
    // if(result !=null){
    //   final file = File(result.files.single.path!);
    //   audioPlayer.setSourceUrl(file.path, isLocal:true);

  }


  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  List<String> _images = [
    "candy.jpg",
    "car.jpg",
    "enum.jpg",
    "Gangsta.jpg",
    "money.jpg",
    "bella_chao.jpg",
  ];
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
    final double itemWidth = size.width /2;

    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 170,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 67,
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
                    bottom: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 270,
                    child: Row(
                      children: [
                        Text(
                          "Crew",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.users,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 270,
                    child: Row(
                      children: [
                        Text(
                          "Gear",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.shoePrints,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 10,
            ),
        Container(
          height: 280,
          width: 400,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
              bottomLeft:Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 5),
                    child: Container(
                      height: 80,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/dp.jpg"),
                          fit: BoxFit.fitWidth
                        )
                      ),
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 46),
                   child: Container(
                        height: 70,
                        width: 180,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5,top: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "0",
                                    style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Following",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                height: 35,
                                child: VerticalDivider(
                                    color: Colors.black,
                                  thickness: 2,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,top: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "7.8M",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Fans",
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              child: VerticalDivider(
                                color: Colors.black,
                                thickness: 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,top: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "112.3 M",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Likes",
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                 ),
                ],
              ),
          Row(
            children: [
          Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Text(
                        "Ben Foakes",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45, top: 15),
                      child: Row(
                        children: [
                          Text(
                            "Bio",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                              onPressed: (){

                          },
                              icon: Icon(Icons.edit,color: Colors.black,size: 14,))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25,top: 35),
                      child: GestureDetector(
                        onTap:(){
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Crew()));
                        },
                        child: Row(
                      children: [
                      Text(
                      "Join a Crew",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          decoration:
                          TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 4,
                          decorationStyle:
                          TextDecorationStyle.double,
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Crew()));
                          },
                          icon: Icon(FontAwesomeIcons.users,color: Colors.black,size: 14,))
                      ],
                    ),
                      ),
                    ),
                  ],
                ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(-3,0),
                        blurStyle: BlurStyle.inner,
                      ),
                    ],
                  ),
                  child: Icon(Icons.auto_graph,color: Colors.black,),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(-3,0),
                        blurStyle: BlurStyle.inner,
                      ),
                    ],
                  ),
                  child: Icon(Icons.send,color: Colors.black,),
                ),
              ),

            ],
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap:(){

                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/viii.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Stream",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:(){

                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/icon.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Icons",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:(){

                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/h.jpg",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Hot Track",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:(){

                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/m.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Collabs",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:(){

                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/s.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Battles",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),

        ),
              Container(
                child: Align(
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicator:
                    CircleTabIndicator(color: Colors.black, radius: 3),
                    tabs: [
                      Tab(
                      icon: Icon(Icons.library_music_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.drafts),

                      ),
                    ],
                    labelStyle:
                    GoogleFonts.roboto(color: Colors.black, fontSize: 14),
                    labelPadding: EdgeInsets.only(left: 60, right: 60),
                    isScrollable: true,
                  ),
                ),
              ),

              Container(
                width: 300,
                height: 150,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                        height: 200,
                        width: 100,
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
                                      Container(
                                        width: 150,
                                        height: 100,
                                        child: Image.asset(
                                          "assets/images/" + images[index],
                                          fit: BoxFit.cover,
                                          height: 90,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            flex:2,
                                            child: Transform.rotate(
                                              angle: 180 * math.pi / 80,
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.mic_external_on,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                                onPressed: null,
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 3,
                                            child: Text(
                                              "   123",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          Flexible(
                                            flex:2,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.messenger_outlined,
                                                color: Colors.black,
                                                size: 18,
                                              ),
                                              onPressed: null,
                                            ),
                                          ),
                                          Flexible(
                                            flex: 2,
                                            child: Text(
                                              "  13",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          Flexible(
                                            flex:2,
                                            child: IconButton(
                                              icon: Icon(
                                                FontAwesomeIcons.dollarSign,
                                                color: Colors.black,
                                                size: 18,
                                              ),
                                              onPressed: null,
                                            ),
                                          ),
                                          Flexible(
                                            flex: 2,
                                            child: Text(
                                              " 70",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text("This is my first recording for this application, please like and share for more in case you like it.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 14,
                                            letterSpacing: -0.8
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 150,
                                          child: Image.asset(
                                            "assets/images/" + images1[index],
                                            fit: BoxFit.cover,
                                            height: 90,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex:2,
                                              child: Transform.rotate(
                                                angle: 180 * math.pi / 80,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.mic_external_on,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  onPressed: null,
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 3,
                                              child: Text(
                                                "   123",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              ),
                                            ),
                                            Flexible(
                                              flex:2,
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.messenger_outlined,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                                onPressed: null,
                                              ),
                                            ),
                                            Flexible(
                                              flex: 2,
                                              child: Text(
                                                "  13",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              ),
                                            ),
                                            Flexible(
                                              flex:2,
                                              child: IconButton(
                                                icon: Icon(
                                                  FontAwesomeIcons.dollarSign,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                                onPressed: null,
                                              ),
                                            ),
                                            Flexible(
                                              flex: 2,
                                              child: Text(
                                                " 70",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text("#Shag Savage #Booty drown #TrendBetterz #me and who #new #jazz",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontSize: 14,
                                              letterSpacing: -0.4,
                                              wordSpacing: 2
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            })),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/i.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        height: 290,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                image: AssetImage("assets/images/bonfire.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Center(
                          child: CarouselSlider(
                            items: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/candy.jpg'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/bella_chao.jpg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/money.jpg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                              aspectRatio: 1/0.8,
                              viewportFraction: 0.7,
                              reverse: true,
                              pageSnapping: true,
                              enlargeCenterPage: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

          ],
          ),
        ),
      ),
    );
  }
}
