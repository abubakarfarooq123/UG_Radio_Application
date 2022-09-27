// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:ug_radio_app/Intro_Sliders/intro_slider1.dart';
// import 'package:ug_radio_app/Intro_Sliders/intro_slider3.dart';
// import 'package:ug_radio_app/Intro_Sliders/intro_slider_2.dart';
//
// class OnBoarding extends StatelessWidget {
//   final _controller = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           // page view
//           SizedBox(
//             height: 702,
//             child: PageView(
//               controller: _controller,
//               children: const [
//                 Intro_Slider1(),
//                 Intro_Slider2(),
//                 Intro_Slider3(),
//               ],
//             ),
//           ),
//
//           // dot indicators
//           SmoothPageIndicator(
//             controller: _controller,
//             count: 3,
//             effect: WormEffect(
//               activeDotColor: Colors.white,
//               dotColor: Colors.grey,
//               dotHeight: 7,
//               dotWidth: 7,
//               spacing: 8,
//               //verticalOffset: 50,
//
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }