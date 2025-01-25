import 'package:flt_task1/controller/screen_two_controller.dart';
import 'package:flt_task1/dummydb.dart';
import 'package:flt_task1/view/screen_one/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ScreenTwoController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenOne(),
      ),
    );
  }
}
