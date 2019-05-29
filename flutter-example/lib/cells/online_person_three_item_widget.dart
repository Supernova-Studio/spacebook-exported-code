
import 'package:flutter/material.dart';


class OnlinePersonThreeItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 60,
      height: 75,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 11,
            right: 10,
            bottom: 0,
            child: Text(
              "Gideon",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 12,
                fontFamily: "Lato",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Container(
              height: 62,
              child: Image.asset(
                "assets/images/ui-avatar-small-copy-2.png",
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}