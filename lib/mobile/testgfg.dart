// import 'package:flutter/material.dart';

// import 'applistHorizontal.dart';
// import 'mphase2.dart';
// import 'mphase3.dart';
// import 'mphase6.dart';
// import 'mphase7.dart';
// import 'mphase8.dart';

// class ZoomImageOnScroll extends StatefulWidget {
//   @override
//   _ZoomImageOnScrollState createState() => _ZoomImageOnScrollState();
// }

// class _ZoomImageOnScrollState extends State<ZoomImageOnScroll> {
//   double _scrollOffset = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NotificationListener<ScrollNotification>(
//         onNotification: (scrollNotification) {
//           if (scrollNotification is ScrollUpdateNotification) {
//             setState(() {
//               _scrollOffset -= scrollNotification.scrollDelta!;
//             });
//           }
//           return true;
//         },
//         child: SingleChildScrollView(
//           child: Column(
//             children: [

            
//               Stack(
//                 children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // Mphase1(hovMD),
//                     Container(
//                       height: 100,
//                       color: Color(0xff7DA0ca),
//                       child: HorizontalListView(),
//                     ),
//                     Mphase2(),
//                     Mphase3(),
//                     SizedBox(height: 20),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.9,
//                       decoration: BoxDecoration(
//                         color: Color(0xffFFDADA),
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(height: 20),
//                           Container(
//                             width: MediaQuery.of(context).size.width * 0.65,
//                             height: 180,
//                             child: ClipRect(
//                               child: Image.asset(
//                                 'assets/images/manage.png',
//                                 fit: BoxFit.fitWidth,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             child: Text(
//                               'Task management',
//                               style: TextStyle(
//                                 fontFamily: 'roboto',
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff052659),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 30),
//                           Container(
//                             width: MediaQuery.of(context).size.width * 0.7,
//                             child: Text(
//                               'Allocating resources and budgeting tasks involves effectively distributing available assets and financial planning to achieve project goals efficiently.',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: 'roboto',
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.normal,
//                                 color: Color(0xff052659),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 40),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.9,
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 243, 234, 251),
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Column(
//                         children: [
//                           Container(
//                             width: MediaQuery.of(context).size.width * 0.8,
//                             height: 200,
//                             child: ClipRect(
//                               child: Image.asset(
//                                 'assets/images/inno.png',
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             child: Text(
//                               'Innovative technology',
//                               style: TextStyle(
//                                 fontFamily: 'roboto',
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff052659),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 30),
//                           Container(
//                             width: MediaQuery.of(context).size.width * 0.7,
//                             child: Text(
//                               'Conduct stakeholder interviews and surveys to identify client goals, pain points, and requirements for a clear project scope statement.',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: 'roboto',
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.normal,
//                                 color: Color(0xff052659),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 40),
//                         ],
//                       ),
//                     ),
//                     Mphase6(),
//                     Mphase7(),
//                     SizedBox(height: 30),
//                     Mphase8(),
//                     SizedBox(height: 30),
                  
//                   ],
//                 ),
//                 Positioned(
//                 top : 700,
//                 child: 
//                   Transform.scale(
//                     scale: 1 + (_scrollOffset.abs() * 0.0001),
//                     child: Container(
//                       color: Color.fromARGB(255, 132, 190, 39),
//                       height: MediaQuery.of(context).size.height * 0.9,
//                       width: MediaQuery.of(context).size.width,
//                       child: ClipRRect(
//                         child: Image.asset(
//                           'assets/images/designzoom2.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                   )
//                 ],
//               ),
//               Container(
//                 height: 1000.0, // Adding more content to make the scroll effect visible
//                 color: Colors.white,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
