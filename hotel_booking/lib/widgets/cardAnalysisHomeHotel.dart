import 'package:flutter/material.dart';

import 'package:hotel_booking/const/colors.dart';

class CardAnalysisHomeHotel extends StatelessWidget {
  String? title;
  String? content;
  IconData? icon;
  CardAnalysisHomeHotel({this.content, this.icon, this.title});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
      child: SizedBox(
        width: width * 0.5,
        child: Card(
          elevation: 5,
          color: kBaseColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                  color: kPrimaryColor,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(icon, size: 30, color: kBaseColor),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "$content",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
