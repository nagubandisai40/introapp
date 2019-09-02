// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: content(context),
                ),

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Next",style: TextStyle(fontSize: 10.0),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Align(
                    child: Text("Previous",style: TextStyle(fontSize: 10.0)),
                    alignment: Alignment.bottomLeft,
                  ),
                ),     
             ],
        ));
  }

  PageView content(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        

      ],
    );
  }
}
