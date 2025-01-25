import 'package:flt_task1/controller/screen_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  void initState() {
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      context.read<ScreenTwoController>().getImages();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ImageProvider = context.watch<ScreenTwoController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        centerTitle: true,
        title: Text(
          "Photo Gallery",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Builder(
            builder: (context) {
              if (ImageProvider.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (ImageProvider.imageList.isEmpty) {
                return Center(
                    child: Text(
                  "No Images available",
                  style: TextStyle(color: Colors.black),
                ));
              } else {
                return Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ImageProvider.imageList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1 / 1),
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.teal,
                          child: Image.asset(context
                              .watch<ScreenTwoController>()
                              .imageList[index]
                              .toString()),
                        );
                      },
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
