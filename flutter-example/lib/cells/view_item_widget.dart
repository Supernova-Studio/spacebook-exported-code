
import 'package:flutter/material.dart';
import 'package:spacebook/screens/profile_photos_widget.dart';


class ViewItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 123,
      height: 122,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 123,
            height: 122,
            child: Image.asset(
              "assets/images/photo-3.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}