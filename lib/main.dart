import 'package:flutter/material.dart';
import 'package:freenet/screens/welcome_page.dart';


const myBlue = const Color(0xFF046380);
const myYellow = const Color(0xFFa7a37e);

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: WelcomePage()
    );
  }
}
