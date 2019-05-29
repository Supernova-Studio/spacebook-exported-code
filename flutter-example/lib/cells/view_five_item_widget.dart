
import 'package:flutter/material.dart';


class ViewFiveItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 185,
      height: 184,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 185,
            height: 184,
            child: Image.asset(
              "assets/images/bg-photo-2.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}