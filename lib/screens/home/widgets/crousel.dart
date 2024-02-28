// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:my_portfolio/screens/widgets/crousel_items.dart';
// import 'package:my_portfolio/utilities/constants';
// import 'package:my_portfolio/utilities/responsive.dart';
// import 'package:responsive_framework/responsive_framework.dart';

// class Carousel extends StatelessWidget {
//   final CarouselController carouselController = CarouselController();
//   @override
//   Widget build(BuildContext context) {
//     double carouselContainerHeight = MediaQuery.of(context).size.height *
//         (Responsive.isMobile(context) ? .7 : .85);
//     return Container(
//       height: carouselContainerHeight,
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             child: CarouselSlider(
//               carouselController: carouselController,
//               options: CarouselOptions(
//                 // autoPlay: true,
//                 viewportFraction: 1,
//                 // scrollPhysics: NeverScrollableScrollPhysics(),
//                 height: carouselContainerHeight,
//               ),
//               items: List.generate(
//                 carouselItems.length,
//                 (index) => Builder(
//                   builder: (BuildContext context) {
//                     return Container(
//                       constraints: BoxConstraints(
//                         minHeight: carouselContainerHeight,
//                       ),
//                       child: Responsive(
//                         // Responsive views
//                         desktop: _buildDesktop(
//                           context,
//                           carouselItems[index].text,
//                           carouselItems[index].image,
//                         ),
//                         tablet: _buildTablet(
//                           context,
//                           carouselItems[index].text,
//                           carouselItems[index].image,
//                         ),
//                         mobile: _buildMobile(
//                           context,
//                           carouselItems[index].text,
//                           carouselItems[index].image,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ).toList(),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// // Big screens
// Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
//   return Center(
//     child: ResponsiveConstraints(
//       constraint: BoxConstraints(
//         maxWidth: MediaQuery.of(context).size.width * 0.9,
//         minWidth: MediaQuery.of(context).size.width * 0.9,
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: text,
//           ),
//           Expanded(
//             child: image,
//           )
//         ],
//       ),
//     ),
//   );
// }

// // Mid screens
// Widget _buildTablet(BuildContext context, Widget text, Widget image) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 20),
//     child: Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: text,
//           ),
//           Expanded(
//             child: image,
//           )
//         ],
//       ),
//     ),
//   );
// }

// // SMall Screens

// Widget _buildMobile(BuildContext context, Widget text, Widget image) {
//   return Container(
//     constraints: BoxConstraints(
//       maxWidth: getMobileMaxWidth(context),
//     ),
//     width: double.infinity,
//     child: text,
//   );
// }
