
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class EventDetailWidget extends StatelessWidget {
  
  void onGroupPressed(BuildContext context) => Navigator.pop(context);
  
  void onLeftItemPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Guess who's back?",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 17,
            fontFamily: "Lato",
          ),
        ),
        leading: IconButton(
          onPressed: () => this.onGroupPressed(context),
          icon: Image.asset("assets/images/group-2.png",),
        ),
        actions: [
          FlatButton(
            onPressed: () => this.onLeftItemPressed(context),
            textColor: Color.fromARGB(255, 255, 255, 255),
            child: Text(
              "Events",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 12,
                fontFamily: "",
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.01, 0.51),
              end: Alignment(1.01, 0.49),
              stops: [
                0,
                1,
              ],
              colors: [
                Color.fromARGB(255, 248, 132, 98),
                Color.fromARGB(255, 140, 28, 140),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 242, 244),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: GoogleMap(
                      onMapCreated: (controller) {
                      
                      },
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 95,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            left: 0,
                            top: 15,
                            right: 0,
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Container(),
                            ),
                          ),
                          Positioned(
                            left: 9,
                            top: 0,
                            right: 20,
                            child: Container(
                              height: 82,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 82,
                                      height: 82,
                                      child: Image.asset(
                                        "assets/images/avatar-2.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 121,
                                      height: 51,
                                      margin: EdgeInsets.only(left: 8, top: 25),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Guess who’s back?",
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
                                              child: Text(
                                                "Happening in 20h, Bajkonur",
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 0, 0, 0),
                                                  fontSize: 10,
                                                  fontFamily: "Lato",
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Opacity(
                                                opacity: 0.4,
                                                child: Text(
                                                  "Event posted by Laika",
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
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 48,
                                      height: 48,
                                      margin: EdgeInsets.only(top: 28),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            height: 29,
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: Image.asset(
                                              "assets/images/group.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Coming",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 140, 28, 140),
                                              fontSize: 14,
                                              fontFamily: "Lato",
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Container(
                width: 185,
                height: 185,
                child: Image.asset(
                  "assets/images/icon-event-area.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}