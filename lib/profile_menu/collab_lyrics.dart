import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ug_radio_app/Record/create_music/create_music_recording.dart';
import 'package:ug_radio_app/Record/create_music/create_music_track_details.dart';

class Collab_Lyrics extends StatefulWidget {
  const Collab_Lyrics({Key? key}) : super(key: key);
  @override
  State<Collab_Lyrics> createState() => _Collab_LyricsState();
}

class _Collab_LyricsState extends State<Collab_Lyrics> {
  bool permitpermission = false;
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
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
    recorder.closeRecorder();
    super.dispose();
  }

  final recorder = FlutterSoundRecorder();
  bool isRecordedReady = false;

  @override
  void initState() {
    super.initState();
    initRecorder();
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

  @override
  Future initRecorder() async {
    final status = await Permission.microphone.request();

    if (status != PermissionStatus.granted) {
      throw 'MicroPhone permission not granted';
    }
    await recorder.openRecorder();
    isRecordedReady = true;

    recorder.setSubscriptionDuration(
      const Duration(milliseconds: 500),
    );
  }

  Future record() async {
    if (!isRecordedReady) return;
    await recorder.startRecorder(toFile: 'audio');
  }

  Future stop() async {
    if (!isRecordedReady) return;
    final path = await recorder.stopRecorder();
    final audiofile = File(path!);
    print('Recorded Audio: $audiofile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white70,
        flexibleSpace: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
              SizedBox(
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: permitpermission ? Colors.grey : Colors.white,
                    ),
                    height: 35,
                    width: 60,
                    child: IconButton(
                      icon: Icon(
                        Icons.mic,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Create_Music_Recording()));
                        setState(() {
                          permitpermission = !permitpermission;
                        });
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: permitpermission ? Colors.white : Colors.grey,
                    ),
                    height: 35,
                    width: 60,
                    child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Collab_Lyrics()));
                        setState(() {
                          permitpermission = !permitpermission;
                        });
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, top: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Create_Music_Track_Detail()));
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: 700,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              child: Container(
                height: 550,
                width: 500,
                child: Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                          child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: TextField(
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration.collapsed(
                              hintText: "Start Writing Lyrics here....."),
                        ),
                      )),
                      SizedBox(
                        height: 420,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 20),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.library_books,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "My Lyrics",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "2 Drafts",
                                  style:
                                      GoogleFonts.roboto(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 15),
              child: StreamBuilder<RecordingDisposition>(
                stream: recorder.onProgress,
                builder: (context, snapshot) {
                  final duration = snapshot.hasData
                      ? snapshot.data!.duration
                      : Duration.zero;
                  String twoDigits(int n) => n.toString().padLeft(2, '0');
                  final twoDigitsMinutes =
                      twoDigits(duration.inMinutes.remainder(60));
                  final twoDigitsSeconds =
                      twoDigits(duration.inSeconds.remainder(60));

                  return Text(
                    '$twoDigitsMinutes:$twoDigitsSeconds',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              height: 80,
              color: Colors.grey.withOpacity(0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: InkWell(
                      child: Container(
                        width: 50,
                        child: IconButton(
                          icon: Icon(
                            Icons.skip_previous,
                            size: 50,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 17),
                    child: InkWell(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white60,
                          child: Icon(
                            recorder.isRecording
                                ? Icons.pause
                                : Icons.fiber_manual_record,
                            size: 40,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      onTap: () async {
                        if (recorder.isRecording) {
                          await stop();
                        } else {
                          await record();
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 12),
                    child: IconButton(
                      iconSize: 55,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
