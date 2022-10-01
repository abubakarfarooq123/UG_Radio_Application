import 'dart:math' as math;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

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

List<String> _images=[
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
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
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
              SizedBox(
                height: 30,
              ),
              Container(
                child: Align(
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicator:
                        CircleTabIndicator(color: Colors.black, radius: 4),
                    tabs: [
                      Tab(
                        text: "Music Feed",
                      ),
                      Tab(
                        text: "Radio",
                      ),
                    ],
                    labelStyle:
                        GoogleFonts.roboto(color: Colors.black, fontSize: 14),
                    labelPadding: EdgeInsets.only(left: 60, right: 60),
                    isScrollable: true,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 275,
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
                height: 55,
              ),
              Center(
                child: Text(
                  "Candy Shope",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Center(
                child: Text(
                  "50 Cent",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Slider(
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
                    color: Colors.black,
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
                  color: Colors.black,
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

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvs, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = Paint()..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvs.drawCircle(circleOffset, radius, _paint);
  }
}
