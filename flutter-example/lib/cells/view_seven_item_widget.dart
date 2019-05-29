
import 'package:flutter/material.dart';


class ViewSevenItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 184,
      height: 184,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 184,
            height: 184,
            child: Image.asset(
              "assets/images/bg-photo-6.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}