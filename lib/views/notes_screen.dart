import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
            padding: EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Text(
                  "My Notes",
                  style: TextStyle(fontSize: 35),
                )
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFFeebb4d),
        onPressed: () {},
        icon: Icon(
          Icons.note_add,
          size: 35,
        ),
        label: Text('Add', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
