import 'dart:async';

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:reminder_v2/widget/circleProgress.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (this.mounted) {
        setState(() {
          // Your state change code goes here
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(DateFormat('EEEE').format(DateTime.now()),
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                  color: Color(0xFFffc93c))),
          Text(DateFormat('dd MMMM yyyy').format(DateTime.now()),
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 24, color: Colors.white)),
          SizedBox(
            height: 50,
          ),
          CustomPaint(
            foregroundPainter: CircleProgress(DateTime.now().second),
            child: Container(
              width: 250,
              height: 250,
              child: Center(
                child: Text(DateFormat('HH : mm').format(DateTime.now()),
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
