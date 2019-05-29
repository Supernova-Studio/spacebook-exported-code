
import 'package:flutter/material.dart';


class NewsTwoItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      constraints: BoxConstraints.expand(height: 470),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            top: 30,
            right: 0,
            bottom: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Container(),
            ),
          ),
          Positioned(
            left: 0,
            top: 80,
            right: 0,
            bottom: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 250,
                  child: Image.asset(
                    "assets/images/bg-news-temp.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(left: 20, top: 18, right: 14),
                  child: Text(
                    "Raiders from the Gemini Cluster are attacking colonial trader ships. When will the Federation step in?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 7, 7, 7),
                      fontSize: 14,
                      fontFamily: "Lato",
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                Container(
                  height: 59,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 251, 251, 251),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 19,
                        height: 19,
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          "assets/images/icon-like.png",
                          fit: BoxFit.none,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            "Varth Dader & 3k like this",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 12,
                              fontFamily: "Lato",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Opacity(
                          opacity: 0.2,
                          child: Text(
                            "Comments disabled by the force",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 12,
                              fontFamily: "Lato",
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 16,
            right: 20,
            child: Container(
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(
                      "assets/images/icon-avatar-2.png",
                      fit: BoxFit.none,
                    ),
                  ),
                  Container(
                    width: 127,
                    height: 32,
                    margin: EdgeInsets.only(left: 9, top: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "The Good Old Times",
                            style: TextStyle(
                              color: Color.fromARGB(255, 15, 15, 15),
                              fontSize: 14,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Opacity(
                              opacity: 0.4,
                              child: Text(
                                "Today, 1:45 PM",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 10,
                                  fontFamily: "Lato",
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}