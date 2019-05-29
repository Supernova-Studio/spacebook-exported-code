
import 'package:flutter/material.dart';


class ViewEightItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 184,
      height: 184,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/photo-3.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}