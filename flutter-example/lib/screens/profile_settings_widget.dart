
import 'package:flutter/material.dart';


class ProfileSettingsWidget extends StatelessWidget {
  
  void onSlideValueChanged(BuildContext context) {
  
  }
  
  void onGroupPressed(BuildContext context) => Navigator.pop(context);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dr. Where settings",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 92,
                height: 92,
                margin: EdgeInsets.only(top: 88),
                child: Image.asset(
                  "assets/images/avatar-temp.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 380,
              margin: EdgeInsets.only(top: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Opacity(
                        opacity: 0.4,
                        child: Text(
                          "DETAILS",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 12,
                            letterSpacing: -0.07,
                            fontFamily: "Lato",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 5, 12, 22),
                                    fontSize: 16,
                                    fontFamily: "Lato",
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Text(
                                  "Dr. Where",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 217, 104, 111),
                                    fontSize: 16,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 7,
                                height: 13,
                                margin: EdgeInsets.only(right: 20),
                                child: Image.asset(
                                  "assets/images/path-2.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Spacemail",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 5, 12, 22),
                                    fontSize: 16,
                                    fontFamily: "Lato",
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Text(
                                  "tardis~spacemail.io",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 217, 104, 111),
                                    fontSize: 16,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 7,
                                height: 13,
                                margin: EdgeInsets.only(right: 20),
                                child: Image.asset(
                                  "assets/images/path-2.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      child: Opacity(
                        opacity: 0.4,
                        child: Text(
                          "INFORMATION",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 12,
                            letterSpacing: -0.07,
                            fontFamily: "Lato",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Occasional advertisement",
                            style: TextStyle(
                              color: Color.fromARGB(255, 5, 12, 22),
                              fontSize: 16,
                              fontFamily: "Lato",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text(
                            "Yes",
                            style: TextStyle(
                              color: Color.fromARGB(255, 217, 104, 111),
                              fontSize: 16,
                              fontFamily: "Lato",
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Randomize timeline information",
                            style: TextStyle(
                              color: Color.fromARGB(255, 5, 12, 22),
                              fontSize: 16,
                              fontFamily: "Lato",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 51,
                          height: 32,
                          margin: EdgeInsets.only(right: 20),
                          child: Switch.adaptive(
                            value: true,
                            inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                            activeColor: Color.fromARGB(255, 140, 28, 140),
                            activeTrackColor: Color.fromARGB(102, 140, 28, 140),
                            onChanged: (value) {
                            
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Logged as",
                              style: TextStyle(
                                color: Color.fromARGB(255, 5, 12, 22),
                                fontSize: 16,
                                fontFamily: "Lato",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Dr. Where",
                            style: TextStyle(
                              color: Color.fromARGB(255, 5, 12, 22),
                              fontSize: 16,
                              fontFamily: "Lato",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text(
                            "Log out",
                            style: TextStyle(
                              color: Color.fromARGB(255, 217, 104, 111),
                              fontSize: 16,
                              fontFamily: "Lato",
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}