
import 'package:flutter/material.dart';
import 'package:spacebook/cells/advertisement_item_widget.dart';
import 'package:spacebook/cells/event_item_widget.dart';
import 'package:spacebook/cells/lifetime_event_item_widget.dart';
import 'package:spacebook/cells/news_item_widget.dart';
import 'package:spacebook/cells/news_two_item_widget.dart';


class TimelineWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "What's up?",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 17,
            fontFamily: "Lato",
          ),
        ),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.01, 0.51),
              end: Alignment(1.01, 0.49),
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
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 242, 244),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 64),
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) => NewsItemWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}