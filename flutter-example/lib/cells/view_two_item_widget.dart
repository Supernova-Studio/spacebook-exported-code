
import 'package:flutter/material.dart';


class ViewTwoItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 122,
      height: 122,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 122,
            height: 122,
            child: Image.asset(
              "assets/images/photo-2.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}