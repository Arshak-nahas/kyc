import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kyc/home.dart';
import 'photo_screen.dart';
import 'video_screen.dart';

class WelcomeScreen extends StatefulWidget {
//  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    PhotoScreen(),
    VideoScreen(),
    PhotoScreen()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings')),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('Add'))
        ],
      ),
      backgroundColor: Colors.red,
//      body: Padding(
//        padding: EdgeInsets.all(25),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            Padding(
//              padding: EdgeInsets.symmetric(vertical: 16.0),
//              child: Material(
//                elevation: 5.0,
//                color: Colors.lightBlueAccent,
//                borderRadius: BorderRadius.circular(30.0),
//                child: MaterialButton(
//                  onPressed: () {
//                    Navigator.pushNamed(context, WelcomeScreen.id);
//                  },
//                  minWidth: 200.0,
//                  height: 42.0,
//                  child: Text(
//                    'welcome In',
//                  ),
//                ),
//              ),
//            ),
//            Padding(
//              padding: EdgeInsets.symmetric(vertical: 16.0),
//              child: Material(
//                elevation: 5.0,
//                color: Colors.lightBlueAccent,
//                borderRadius: BorderRadius.circular(30.0),
//                child: MaterialButton(
//                  onPressed: () {
//                    Navigator.pushNamed(context, PhotoScreen.id);
//                  },
//                  minWidth: 200.0,
//                  height: 42.0,
//                  child: Text(
//                    'photo In',
//                  ),
//                ),
//              ),
//            ),
//            Padding(
//              padding: EdgeInsets.symmetric(vertical: 16.0),
//              child: Material(
//                elevation: 5.0,
//                color: Colors.lightBlueAccent,
//                borderRadius: BorderRadius.circular(30.0),
//                child: MaterialButton(
//                  onPressed: () {
//                    Navigator.pushNamed(context, VideoScreen.id);
//                  },
//                  minWidth: 200.0,
//                  height: 42.0,
//                  child: Text(
//                    'video In',
//                  ),
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
    );
  }
}
