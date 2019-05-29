
import 'package:flutter/material.dart';


class OnlinePersonItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 60,
      height: 75,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 3,
            right: 2,
            bottom: 0,
            child: Text(
              "Mrs. Doya",
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
                "assets/images/avatar-temp-2.png",
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}