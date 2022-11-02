import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ug_radio_app/record_video/video_chipz_lab.dart';

class Wave_Video extends StatefulWidget {
  const Wave_Video({Key? key}) : super(key: key);

  @override
  State<Wave_Video> createState() => _Wave_VideoState();
}

class _Wave_VideoState extends State<Wave_Video> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            size: 20,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Audio",
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              height: 200,
              width: 350,
              child: Image(
                image: AssetImage(
                  "assets/images/candy.jpg",
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Center(
              child: Text(
                "Candy Shope",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "50 Cent",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Slider(
                activeColor: Colors.grey,
                inactiveColor: Colors.black,
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
                  Text(
                    formatTime(position),
                    style: GoogleFonts.roboto(color: Colors.black),
                  ),
                  Text(
                    formatTime(duration - position),
                    style: GoogleFonts.roboto(color: Colors.black),
                  ),
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
            SizedBox(
              height: 25,
            ),
            Container(
              height: 70,
              width: 400,
              color: Colors.grey.withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Video_Chipz_Lab()));
                      },
                      child: Text(
                        "Choose an other one",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
