
import 'package:flutter/material.dart';
import 'package:spacebook/screens/login_widget.dart';
import 'package:spacebook/screens/tab_bar_widget.dart';


class SignupWidget extends StatelessWidget {
  
  void onSwitchValueChanged(BuildContext context) {
  
  }
  
  void onSignUpPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => TabBarWidget()));
  
  void onLogInPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
  void onGroupPressed(BuildContext context) => Navigator.pop(context);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => this.onGroupPressed(context),
          icon: Image.asset("assets/images/group-2.png",),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.31, 1.1),
            end: Alignment(0.69, -0.1),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 89),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 42,
                    letterSpacing: -1,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "It’s free and always will be.\nBecause advertisement.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontFamily: "Lato",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 152,
              margin: EdgeInsets.only(left: 20, top: 70, right: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(51, 0, 0, 0),
                    offset: Offset(0, 20),
                    blurRadius: 25,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 15, top: 14, right: 18),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Your nickname",
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: "Lato",
                      ),
                      maxLines: 1,
                      autocorrect: false,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Opacity(
                      opacity: 0.1,
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 15, top: 14, right: 18),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Your spacemail",
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: "Lato",
                      ),
                      maxLines: 1,
                      autocorrect: false,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Opacity(
                      opacity: 0.1,
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 15, top: 14, right: 18),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password (40+ characters)",
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: "Lato",
                      ),
                      obscureText: true,
                      maxLines: 1,
                      autocorrect: false,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 32,
              margin: EdgeInsets.only(left: 25, top: 15, right: 25),
              child: Row(
                children: [
                  Text(
                    "I agree with intergalatic terms and conditions",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 13,
                      fontFamily: "Lato",
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  Container(
                    width: 51,
                    height: 32,
                    child: Switch.adaptive(
                      value: true,
                      inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                      activeColor: Color.fromARGB(255, 142, 28, 138),
                      activeTrackColor: Color.fromARGB(102, 142, 28, 138),
                      onChanged: (value) {
                      
                      },
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: FlatButton.icon(
                icon: Image.asset("assets/images/icon-sign-up.png",),
                label: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => this.onSignUpPressed(context),
                color: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                textColor: Color.fromARGB(255, 217, 104, 111),
                padding: EdgeInsets.all(0),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 232,
                height: 18,
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Text(
                        "Already gave up your soul? ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontFamily: "Lato",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 47,
                      height: 18,
                      child: FlatButton(
                        onPressed: () => this.onLogInPressed(context),
                        color: Colors.transparent,
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "Log In!",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
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
    );
  }
}