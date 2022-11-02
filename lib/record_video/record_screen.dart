import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ug_radio_app/record_video/video_chipz_lab.dart';

class Record_Video extends StatefulWidget {
  const Record_Video({Key? key}) : super(key: key);

  @override
  State<Record_Video> createState() => _Record_VideoState();
}

class _Record_VideoState extends State<Record_Video> {
  late List<CameraDescription> cameras;
  late CameraController controller;
  int direction = 0;

  @override
  void initState() {
    startCamera();
    super.initState();
  }

  void startCamera() async {
    cameras = await availableCameras();
    controller = CameraController(cameras[direction], ResolutionPreset.medium,
        enableAudio: true);
    await controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller.value.isInitialized) {
      return Scaffold(
        body: Column(
          children: [
            Container(
              height: 450,
              width: 400,
              child: CameraPreview(
                controller,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  setState(() {
                    direction = direction == 0 ? 1 : 0;
                    startCamera();
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  child: Icon(
                    Icons.flip_camera_android,
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Video_Chipz_Lab()));
              },
              child: Container(
                height: 110,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.solidFloppyDisk,
                      color: Color.fromARGB(255, 218, 162, 16),
                      size: 35,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add Beat",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Container(
              height: 110,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 80,
                      width: 100,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Icon(
                            Icons.note_add,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text(
                            "Lyrics",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {
                        controller.startVideoRecording();
                      },
                      child: Container(
                        height: 80,
                        width: 100,
                        child: Icon(
                          Icons.fiber_manual_record_rounded,
                          size: 50,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 100,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
