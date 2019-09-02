import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Main1 extends StatefulWidget {
  @override
  _Main1State createState() => _Main1State();
}

class _Main1State extends State<Main1> {
  List<String> imagePath = [
    "images/welcome.png",
    "images/auth.jpg",
    "images/event.jpg",
    "images/alerts.jpg",
    "images/win1.jpg",
  ];
  List<String> title = [
    "Welcome",
    "Authentication",
    "Event Registration",
    "Alerts",
    "Notifications",
    // "Payment",
  ];
  List<String> description = [
    "Welcome description",
    "Authentication Description",
    "Events Description",
    "Alerts Description",
    "Notifications Description",
    // "Payment Description"
  ];
  int index = 0;

  Widget mainWidget({String title, String description, String imagepath}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3.0,
                              spreadRadius: 1.0)
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.55),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.55,
                          height: MediaQuery.of(context).size.width * 0.55,
                          decoration: ShapeDecoration(
                              shape: CircleBorder(), color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width * 0.0111),
                            child: DecoratedBox(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width * 0.55),
                                  child: Image.asset(
                                    imagepath,
                                    fit: BoxFit.cover,
                                  )),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: CircleBorder(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.018,
                        bottom: MediaQuery.of(context).size.height * 0.038),
                    child: Text(title, style: TextStyle(fontSize: 25)),
                  ),
                ],
              ),
              elevation: 4,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.042),
            child: Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Positioned(
          top: 0,
          child: Image.asset("images/back.jpg",),
        ),
        PageView.builder(
          onPageChanged: (value) {
            setState(() {
              this.index = value;
              print(index);
            });
          },
          itemBuilder: (BuildContext context, int index) {
            print(imagePath[index] + "$index");
            return Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: mainWidget(
                    title: title[index],
                    description: description[index],
                    imagepath: imagePath[index]),
              ),
            );
          },
          itemCount: title.length,
        ),
        Positioned(
          bottom: 3,
          child: DotsIndicator(
            dotsCount: title.length,
            position: index,         
          ),
        ),
        Positioned(
          bottom: 13,
          left: 12,
          child: index==title.length-1?Container():Text("Skip",style: TextStyle(fontSize: 15),)
        ),
        Positioned(
          bottom: 13,
          right: 12,
          child: index==title.length-1?Text("Done",style: TextStyle(fontSize: 15),):Container()
        ),
      ],
    );
  }
}
