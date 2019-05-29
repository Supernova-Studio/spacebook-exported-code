
import 'package:flutter/material.dart';
import 'package:spacebook/cells/message_five_item_widget.dart';
import 'package:spacebook/cells/message_four_item_widget.dart';
import 'package:spacebook/cells/message_item_widget.dart';
import 'package:spacebook/cells/message_six_item_widget.dart';
import 'package:spacebook/cells/message_three_item_widget.dart';
import 'package:spacebook/cells/message_two_item_widget.dart';
import 'package:spacebook/cells/online_person_item_widget.dart';
import 'package:spacebook/cells/online_person_three_item_widget.dart';
import 'package:spacebook/cells/online_person_two_item_widget.dart';


class MessagesWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
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
            Container(
              height: 75,
              margin: EdgeInsets.only(left: 15, top: 74, right: 20),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 75,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => OnlinePersonItemWidget(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 12),
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) => MessageItemWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}