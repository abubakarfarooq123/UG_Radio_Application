// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:ug_radio_app/Intro_Sliders/intro_slider4.dart';
// class OnBoarding extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => SafeArea(
//       child: IntroductionScreen(
//         pages: [
//           PageViewModel(
//             title: 'Create Account, listen and Support !',
//             body: 'Listen to music uploaded by artists all around the World, send icons, comment and help them grow.',
//             image: buildImage("assets/images/phone.jpg"),
//
//             decoration: getPageDecoration(),
//           ),
//           PageViewModel(
//             title: 'Upload  Track and Share',
//             body: 'Upload your voice whenever you want as UG Radio provide the best platform for recognization.',
//             image: buildImage("assets/images/23.jpg"),
//
//             decoration: getPageDecoration(),
//           ),
//           PageViewModel(
//             title: 'Listen to Real Artists',
//             body: 'In UG Radio, you can listen to artists and make them progress by like, comment even help sponser with icons.',
//             image: buildImage("assets/images/6.jpg"),
//             decoration: getPageDecoration(),
//           ),
//         ],
//         showSkipButton: true,
//         skip: Text("Skip",style: GoogleFonts.roboto(
//             color: Colors.black
//         ),),
//         next: Icon(Icons.arrow_forward,color: Colors.black,),
//         done: Text(
//           "Get Started",
//           style: GoogleFonts.roboto(
//               color: Colors.black,
//               fontSize: 16
//           ),
//         ),
//         dotsDecorator: getDotDecorator(),
//         onDone: (){
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => Intro_Slider4()));
//
//         },
//       ),
//   );
// }
// Widget buildImage(String path) =>
//     Center(child: Image.asset(path,width: 350,),);
// DotsDecorator getDotDecorator()=> DotsDecorator(
//     color: Colors.grey,
//     size: Size(10,10),
//     activeSize: Size(22,10),
//     activeColor: Colors.black,
//     activeShape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(24),
//     )
// );
// PageDecoration getPageDecoration()=> PageDecoration(
//   bodyPadding: EdgeInsets.only(top: 70).copyWith(bottom: 0),
//   titleTextStyle: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white),
//   bodyTextStyle: GoogleFonts.roboto(fontSize: 16,color: Colors.white),
//   pageColor: Colors.black
//
// );
//
//
