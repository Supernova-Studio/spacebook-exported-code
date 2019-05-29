
import 'package:flutter/material.dart';
import 'package:spacebook/screens/tab_bar_widget.dart';


class LoginWidget extends StatelessWidget {
  
  void onLoginPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => TabBarWidget()));
  
  void onForgotYourPasswordPressed(BuildContext context) {
  
  }
  
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
                margin: EdgeInsets.only(top: 114),
                child: Text(
                  "Log in",
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
                  "Welcome back.\nThe galaxy awaits you.",
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
              height: 101,
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
                    margin: EdgeInsets.only(left: 15, top: 14, right: 15),
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
                    margin: EdgeInsets.only(left: 15, top: 14, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Your password",
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
            Spacer(),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 11),
              child: FlatButton.icon(
                icon: Image.asset("assets/images/icon-log-in.png",),
                label: Text(
                  "LOG IN",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => this.onLoginPressed(context),
                color: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                textColor: Color.fromARGB(255, 217, 104, 111),
                padding: EdgeInsets.all(0),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 150,
                height: 18,
                margin: EdgeInsets.only(bottom: 19),
                child: FlatButton(
                  onPressed: () => this.onForgotYourPasswordPressed(context),
                  color: Colors.transparent,
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Lato",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}