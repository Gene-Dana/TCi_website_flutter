import 'package:flutter/material.dart';
import 'package:TCi/views/home/home_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Team Crushing it',
      theme: ThemeData(
        primaryColorDark: Color(0xFF1B1B26),
        primaryColorLight: Color(0xFFFFFFFF),
        accentColor: Color(0xFFEB6A4A),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
            color: Color(0xFF1B1B26),
            fontSize: 50,
          ),
          headline2: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
            color: Color(0xFFDDE2E9),
            fontSize: 50,
          ),
          bodyText1: TextStyle(
            fontFamily: "Open Sans",
            fontWeight: FontWeight.w700,
            color: Color(0xFFDDE2E9),
            fontSize: 20,
          ),
          bodyText2: TextStyle(
            fontFamily: "Open Sans",
            fontWeight: FontWeight.w700,
            color: Color(0xFF1B1B26),
            fontSize: 20,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
      // home: Home(),
    );
  }
}

class DebugBorder extends StatelessWidget {
  final Widget child;
  const DebugBorder({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
      child: child,
    );
  }
}