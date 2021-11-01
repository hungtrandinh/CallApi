import 'package:flutter/material.dart';
import 'src/page/dowload.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateMyApp();
  }
}

class StateMyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DownloadImage());
  }
}
