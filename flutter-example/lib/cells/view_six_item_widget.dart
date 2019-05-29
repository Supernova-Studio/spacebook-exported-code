
import 'package:flutter/material.dart';


class ViewSixItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 184,
      height: 184,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 184,
            height: 184,
            child: Image.asset(
              "assets/images/bg-photo-5.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}