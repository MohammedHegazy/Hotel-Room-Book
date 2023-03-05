import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel_booking/const/colors.dart';
import 'package:hotel_booking/widgets/Drawer.dart';

class RoomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var customStyletitle = TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
    var customStylesubtitle =
        TextStyle(fontSize: 20, fontWeight: FontWeight.w300);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Rooms"),
        centerTitle: true,
      ),
      drawer: customDarwer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => kSecendryColor)),
                onPressed: () {},
                child: Text("New Room"),
              )
            ],
          ),
          Expanded(
              child: Container(
            child: ListView(
              children: [
                Card(
                  elevation: 5,
                  color: kBaseColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("# 1", style: customStyletitle),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Category",
                                            style: customStyletitle,
                                          ),
                                          Text(
                                            "VIP",
                                            style: customStylesubtitle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Price",
                                            style: customStyletitle,
                                          ),
                                          Text(
                                            "\$1500",
                                            style: customStylesubtitle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Num of People",
                                            style: customStyletitle,
                                          ),
                                          Text(
                                            "2",
                                            style: customStylesubtitle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Show"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
