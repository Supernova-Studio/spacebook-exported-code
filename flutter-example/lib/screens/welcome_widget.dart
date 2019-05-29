
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:spacebook/screens/login_widget.dart';
import 'package:spacebook/screens/signup_widget.dart';
import 'package:spacebook/widgets/logo_image.dart';


class WelcomeWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _WelcomeWidgetState();
}


class _WelcomeWidgetState extends State<WelcomeWidget> with SingleTickerProviderStateMixin {
  AnimationController animationControllerElementOne;
  
  @override
  void initState() {
  
    super.initState();
    this.animationControllerElementOne = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    this.startAnimationOne();
  }
  
  @override
  void dispose() {
  
    super.dispose();
    this.animationControllerElementOne.dispose();
  }
  
  void onSignUpPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SignupWidget()));
  
  void onLogInPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
  void startAnimationOne() => this.animationControllerElementOne.forward();
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
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
                width: 120,
                height: 120,
                margin: EdgeInsets.only(top: 100),
                child: logoImage(
                  animationControllerElementOne: this.animationControllerElementOne,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  "Spacebook",
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
                  "Conquer the stars\nfrom behind the screen.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontFamily: "Lato",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 85),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 148,
                    height: 60,
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
                  Spacer(),
                  Container(
                    width: 148,
                    height: 60,
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
                      onPressed: () => this.onLogInPressed(context),
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                      textColor: Color.fromARGB(255, 219, 104, 110),
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "© 2050 Supernova Studio",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 15,
                    fontFamily: "Lato",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}