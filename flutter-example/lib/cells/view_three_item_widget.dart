
import 'package:flutter/material.dart';


class ViewThreeItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 122,
      height: 122,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 122,
            height: 122,
            child: Image.asset(
              "assets/images/photo-1.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}