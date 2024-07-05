// import 'package:flutter/material.dart';
// import './circularprogress.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class ActiveScreen extends StatelessWidget {
//   final String head;
//   final String desc;
//   final Color color;
//   final double percentage;
//   final String pstr;

//   const ActiveScreen(
//       {super.key,
//       required this.head,
//       required this.desc,
//       required this.color,
//       required this.percentage,
//       required this.pstr});

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final double screenWidth = mediaQuery.size.width;
//     final double screenHeight = mediaQuery.size.height;
//     final double aspectRatio = screenWidth / screenHeight;
//     return GridView.builder(
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: 5,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           childAspectRatio: aspectRatio,
//         ),
//         itemBuilder: (context, index) {
//           return Container(
//             height: 150,
//             width: 100,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // CustomPaint(
//                 //   foregroundPainter: CirclarProgress(),
//                 //   child: Center(child: Text("hi")),
//                 // ),
//                 new CircularPercentIndicator(
//                   radius: 40.0,
//                   lineWidth: 5.0,
//                   animation: true,
//                   percent: percentage,
//                   center: new Text(
//                     pstr,
//                     style: new TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 20.0),
//                   ),
//                   // footer: new Text(
//                   //   "Sales this week",
//                   //   style: new TextStyle(
//                   //       fontWeight: FontWeight.bold, fontSize: 17.0),
//                   // ),
//                   circularStrokeCap: CircularStrokeCap.round,
//                   progressColor: Colors.white,
//                 ),
//                 Column(children: [
//                   SizedBox(height: 20),
//                   Text(head,
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20.0,
//                           color: Colors.white)),
//                   Text(desc,
//                       style: TextStyle(
//                           fontWeight: FontWeight.normal,
//                           fontSize: 13.0,
//                           color: Colors.white)),
//                 ])
//               ],
//             ),
//             decoration: BoxDecoration(
//                 color: color, borderRadius: BorderRadius.circular(40)),
//           );
//         });
//   }
// }

import 'package:flutter/material.dart';
import './circularprogress.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveScreen extends StatelessWidget {
  final String head;
  final String desc;
  final Color color;
  final double percentage;
  final String pstr;

  const ActiveScreen(
      {super.key,
      required this.head,
      required this.desc,
      required this.color,
      required this.percentage,
      required this.pstr});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double aspectRatio = screenWidth / screenHeight;
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // CustomPaint(
                      //   foregroundPainter: CirclarProgress(),
                      //   child: Center(child: Text("hi")),
                      // ),
                      new CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: percentage,
                        center: new Text(
                          pstr,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        // footer: new Text(
                        //   "Sales this week",
                        //   style: new TextStyle(
                        //       fontWeight: FontWeight.bold, fontSize: 17.0),
                        // ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.white,
                      ),
                      Column(children: [
                        SizedBox(height: 20),
                        Text(head,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white)),
                        Text(desc,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 13.0,
                                color: Colors.white)),
                      ])
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(40)),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Container(
                  height: 200,
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // CustomPaint(
                      //   foregroundPainter: CirclarProgress(),
                      //   child: Center(child: Text("hi")),
                      // ),
                      new CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: percentage,
                        center: new Text(
                          pstr,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        // footer: new Text(
                        //   "Sales this week",
                        //   style: new TextStyle(
                        //       fontWeight: FontWeight.bold, fontSize: 17.0),
                        // ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.white,
                      ),
                      Column(children: [
                        SizedBox(height: 20),
                        Text(head,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white)),
                        Text(desc,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 13.0,
                                color: Colors.white)),
                      ])
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ],
          )
        ]);
  }
}
