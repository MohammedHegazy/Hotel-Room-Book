import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel_booking/const/colors.dart';
import 'package:hotel_booking/widgets/Drawer.dart';
import 'package:hotel_booking/widgets/cardAnalysisHomeHotel.dart';

class HomeHotel extends StatefulWidget {
  @override
  State<HomeHotel> createState() => _HomeHotelState();
}

class _HomeHotelState extends State<HomeHotel> {
  bool _isSelected = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          title: Text("Hotel Dashoard"),
          centerTitle: true,
          backgroundColor: kPrimaryColor),
      drawer: customDarwer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Welcome Hotel Name",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            SizedBox(
              height: height * 0.5,
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                children: [
                  CardAnalysisHomeHotel(
                      content: "150", icon: Icons.person, title: "Total Rooms"),
                  CardAnalysisHomeHotel(
                      content: "50", icon: Icons.person, title: "Total Book"),
                  CardAnalysisHomeHotel(
                      content: "150", icon: Icons.person, title: "Total Rooms"),
                  CardAnalysisHomeHotel(
                      content: "150", icon: Icons.person, title: "Total Rooms"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
