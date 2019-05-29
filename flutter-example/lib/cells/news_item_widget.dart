
import 'package:flutter/material.dart';


class NewsItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      constraints: BoxConstraints.expand(height: 419),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            top: 30,
            right: 0,
            bottom: 0,
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
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  child: Image.asset(
                    "assets/images/bg-news-temp-2.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 18, right: 20, bottom: 22),
                    child: Text(
                      "Melon Husk launches the first car that can travel a galaxy on a single tank of gas.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontSize: 14,
                        fontFamily: "Lato",
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
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
                            "Spacewoman & 185k like this",
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
                        width: 19,
                        height: 19,
                        margin: EdgeInsets.only(right: 5),
                        child: Image.asset(
                          "assets/images/icon-comment.png",
                          fit: BoxFit.none,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            "21k comments",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 12,
                              fontFamily: "Lato",
                            ),
                            textAlign: TextAlign.left,
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
            left: 9,
            top: 14,
            right: 10,
            child: Container(
              height: 82,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 82,
                    height: 82,
                    child: Image.asset(
                      "assets/images/icon-avatar.png",
                      fit: BoxFit.none,
                    ),
                  ),
                  Container(
                    width: 83,
                    height: 32,
                    margin: EdgeInsets.only(left: 8, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "SpaceCrunch",
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