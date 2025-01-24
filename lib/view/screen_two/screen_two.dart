import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        centerTitle: true,
        title: Text(
          "Photo Gallery",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
