import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Active_ALl extends StatefulWidget {
  const Active_ALl({Key? key}) : super(key: key);

  @override
  State<Active_ALl> createState() => _Active_ALlState();
}

class _Active_ALlState extends State<Active_ALl> {
  String formatTime(Duration duration){
    String twoDigits(int n) => n.toString().padLeft(2,'0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if(duration.inHours>0) hours,
      minutes,
      seconds,
    ].join(":");
  }

  final audioPlayer = AudioPlayer();
  bool isPlaying =false;
  Duration duration= Duration.zero;
  Duration position =Duration.zero;

  @override
  void initState() {
    super.initState();
    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state){
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration){
      setState(() {
        duration=newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition){
      setState(() {
        position = newPosition;
      });
    });
  }
  Future setAudio() async{
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
  void dispose (){
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             height: 800,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/i.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                        image: AssetImage("assets/images/bonfire.jpg"),
                        fit: BoxFit.cover,
                    )
                ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 160,
                      ),
                      CarouselSlider(
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
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 2),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Text(
                          "Candy Shope",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "50 Cent",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Slider(
                          activeColor: Colors.grey,
                          inactiveColor: Colors.white,
                          min: 0,
                          max: duration.inSeconds.toDouble(),
                          value: position.inSeconds.toDouble(),
                          onChanged: (value) async{
                            final position = Duration(seconds: value.toInt());
                            await audioPlayer.seek(position);

                            await audioPlayer.resume();
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 40,right: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatTime(position),style: GoogleFonts.roboto(color:Colors.white),),
                            Text(formatTime(duration - position),style: GoogleFonts.roboto(
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 35,
                            color: Colors.white,
                            onPressed: (){

                            },
                            icon: Icon(
                              Icons.skip_previous,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          IconButton(
                            iconSize: 45,
                            color: Colors.white,
                            onPressed: () async{
                              if(isPlaying){
                                await audioPlayer.pause();
                              }
                              else{
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
                            color: Colors.white,
                            onPressed: (){

                            },
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
      ..color = Colors.amberAccent
      ..style = PaintingStyle.stroke;
    final arcRect =
    Rect.fromCircle(center: size.bottomCenter(Offset.zero), radius: 200);
    canvas.drawArc(arcRect, 0, -pi, false, redCircle);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
}

