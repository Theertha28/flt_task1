import 'package:flt_task1/dummydb.dart';
import 'package:flt_task1/view/screen_one/screen_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return MaterialApp(
      home: ScreenOne(
       
      ),
    );
  }
}
