import 'package:flt_task1/view/screen_two/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    List Specialities = [
      {"imagePath": "assets/images/scope 1.png", "title": "General Physician"},
      {"imagePath": "assets/images/kids 1.png", "title": "Child Specialist"},
      {"imagePath": "assets/images/skin 1.png", "title": "Skin & Hair"},
      {"imagePath": "assets/images/mental 1 (1).png", "title": "Mental Health"},
      {"imagePath": "assets/images/bones 1.png", "title": "Bones & Joints"},
      {"imagePath": "assets/images/ent 1.png", "title": "Ear,Nose,Throat"},
      {"imagePath": "assets/images/lungs 1.png", "title": "Pulmonologist"},
    ];
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(7),
          child: Image.asset(
            "assets/icons/menu 1.png",
            height: 1,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: Colors.white),
            SizedBox(width: 8),
            Text("Banglore", style: TextStyle(color: Colors.white)),
          ],
        ),
        actions: [
          Icon(
            Icons.notifications_none_outlined,
            color: Colors.teal.shade900,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.teal.shade900,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        suffixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/banner1.png',
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Specialities",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ScreenTwo()));
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.teal.shade900),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 7,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 40,
                          mainAxisSpacing: 20,
                          childAspectRatio: 5 / 7),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 350,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  Specialities[index]["imagePath"],
                                  height: 50,
                                ),
                              ),
                              Text(
                                Specialities[index]["title"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
