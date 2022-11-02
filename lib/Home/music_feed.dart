import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class Music_Feed extends StatefulWidget {
  const Music_Feed({Key? key}) : super(key: key);

  @override
  State<Music_Feed> createState() => _Music_FeedState();
}

class _Music_FeedState extends State<Music_Feed> {
  bool pressAttention = false;
  bool selectedButton = true;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
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
    final double itemWidth = size.width / 2;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(top: 12, left: 60),
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.black,
                      ),
                      hintText: "Search |",
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
            ),
            Container(
                height: 320,
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
                              Container(
                                width: 150,
                                height: 90,
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
                                    flex: 2,
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
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
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
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
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
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "This is my first recording for this application, please like and share for more in case you like it.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 14,
                                    letterSpacing: -0.8),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      backgroundColor: Colors.black,
                                      context: context,
                                      builder: ((builder) => dialogContent()),
                                    );
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 218, 162, 16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.headphones,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "New to Hot",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
                                      flex: 2,
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
                                            color: Colors.black, fontSize: 12),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
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
                                            color: Colors.black, fontSize: 12),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
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
                                            color: Colors.black, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "#Shag Savage #Booty drown #TrendBetterz #me and who #new #jazz",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 14,
                                      letterSpacing: -0.4,
                                      wordSpacing: 2),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        backgroundColor: Colors.black,
                                        context: context,
                                        builder: ((builder) => dialogContent()),
                                      );
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            Color.fromARGB(255, 218, 162, 16),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.headphones,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "New to Hot",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    })),
            SizedBox(
              height: 55,
            ),
            Center(
              child: Text(
                "Candy Shop",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "50 Cent",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) async {
                  final position = Duration(seconds: value.toInt());
                  await audioPlayer.seek(position);

                  await audioPlayer.resume();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(formatTime(position)),
                  Text(formatTime(duration - position)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 35,
                  color: Colors.black,
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  iconSize: 45,
                  color: Colors.black,
                  onPressed: () async {
                    if (isPlaying) {
                      await audioPlayer.pause();
                    } else {
                      await audioPlayer.resume();
                    }
                  },
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  iconSize: 35,
                  color: Colors.black,
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_next,
                  ),
                ),
              ],
            ),
            CustomPaint(
              painter: MyPainter(),
            ),
          ],
        ),
      ),
    );
  }

  Widget dialogContent() {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 160,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Candy Shop",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.headphones,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Hot",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.local_fire_department,
                          color: Colors.red,
                          size: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 90,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/candy.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Icon(
                      Icons.local_fire_department,
                      size: 25,
                      color: Color.fromARGB(255, 218, 162, 16),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Get on to the front of Hot Feed",
                    style: GoogleFonts.roboto(
                      color: Color.fromARGB(255, 218, 162, 16),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Icon(
                      Icons.remove_red_eye,
                      size: 25,
                      color: Color.fromARGB(255, 218, 162, 16),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1000+ will see your track",
                    style: GoogleFonts.roboto(
                      color: Color.fromARGB(255, 218, 162, 16),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    pressAttention = !pressAttention;
                  });
                },
                child: Container(
                  height: 50.0,
                  width: 270.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: pressAttention
                          ? Colors.grey.withOpacity(0.2)
                          : Color.fromARGB(255, 218, 162, 16),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Advanced Promo',
                            style: GoogleFonts.roboto(
                              fontSize: 11.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '1000+ Fans will see your Post',
                            style: GoogleFonts.roboto(
                              fontSize: 11.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        FontAwesomeIcons.coins,
                        color: Color.fromARGB(255, 218, 162, 16),
                        size: 17,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "900",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    pressAttention = !pressAttention;
                  });
                },
                child: Container(
                  height: 50.0,
                  width: 270.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: pressAttention
                          ? Color.fromARGB(255, 218, 162, 16)
                          : Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Classic Promo',
                            style: GoogleFonts.roboto(
                              fontSize: 11.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '200+ Fans will see your Post',
                            style: GoogleFonts.roboto(
                              fontSize: 11.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        FontAwesomeIcons.coins,
                        color: Color.fromARGB(255, 218, 162, 16),
                        size: 17,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "500",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40.0,
                width: 270.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color.fromARGB(255, 218, 162, 16),
                  onPressed: () {},
                  child: Text(
                    'Send to Hot',
                    style: GoogleFonts.roboto(
                      fontSize: 17.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final redCircle = Paint()
      ..strokeWidth = 10
      ..color = Color.fromARGB(255, 218, 162, 16)
      ..style = PaintingStyle.stroke;
    final arcRect =
        Rect.fromCircle(center: size.bottomCenter(Offset.zero), radius: 200);
    canvas.drawArc(arcRect, 0, -pi, false, redCircle);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
}
