import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:reminder_v2/views/home_screen.dart';
import 'package:reminder_v2/views/notes_screen.dart';
import 'package:reminder_v2/views/reminder_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2a3d66),
      body: Center(child: _getPage(currentPage)),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xFF5d54a4),
        inactiveIconColor: Color(0xFF5d54a4),
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState;
                fState.setPage(3);
              }),
          TabData(
            iconData: Icons.wysiwyg,
            title: "Catatan",
          ),
          TabData(iconData: Icons.today, title: "Planned"),
          TabData(iconData: Icons.assignment, title: "Tasks")
        ],
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return HomeScreen();
      case 1:
        return NotesScreen();
      case 2:
        return ReminderScreen();
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the basket page"),
            RaisedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            )
          ],
        );
    }
  }
}
