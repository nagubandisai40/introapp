// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
import 'package:introapps/main1.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Main1());
  }

  // Align bottomContainer(BuildContext context) {
  //   return Align(
  //             alignment: Alignment.bottomCenter,
  //             child: Stack(
  //               children: <Widget>[
  //                 Container(
  //                   height: MediaQuery.of(context).size.height*0.05,
  //                   // color: Colors.red,
  //                 ),
  //                 Positioned(
  //                   // bottom: 12,
  //                   right: 24,
  //                   child: this.index!=2?Text("Next"):Text("Done")
  //                 )
  //               ],
  //             ),
  //           );
  // }

  // CarouselSlider slider(BuildContext context) {
  //   return CarouselSlider(
  //     autoPlay: false,
  //     enableInfiniteScroll: false,
  //     initialPage: 0,
  //     reverse: false,
  //     viewportFraction: 1.0,
  //     aspectRatio: MediaQuery.of(context).size.aspectRatio,
  //     height: MediaQuery.of(context).size.height * 0.855,
  //     items: [0, 1, 2].map((i) {
  //       return Builder(
  //         builder: (BuildContext context) {
  //           return Container(
  //             width: MediaQuery.of(context).size.width,
  //             child: Container(
  //               // color: Colors.yellow,
  //               child: actualWidget(i),
                
  //             ),
  //           );
  //         },
  //       );
  //     }).toList(),
  //   );
  // }

// Widget actualWidget(int index)
// {
//   this.index=index;
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: <Widget>[
//         Card(
//           child: Image.asset("images/image1.jpg",width: MediaQuery.of(context).size.width*0.8,),
//           elevation: 10,
//         ),
//         Text(title[index],style: TextStyle(fontFamily: "Caslon", fontSize: 25),),
//         RichText(
//           textAlign: TextAlign.center,
//           text: TextSpan(
//             style: new TextStyle(
//               fontSize: 14,
//               color: Colors.black
//             ),
//             children: [
//               TextSpan(
//                 text: description[index],
//                 style: new TextStyle(fontFamily: 'Avenir')
//               )
//             ]
//           )

//         )
//     ],
//   );
// }


  Stack topContainer(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          // color: Colors.blue,
        ),
        Positioned(
          child: Text(
            "Skip",
            style: TextStyle(fontSize: 16),
          ),
          top: 5,
          right: 24,
        )
      ],
    );
  }
}
