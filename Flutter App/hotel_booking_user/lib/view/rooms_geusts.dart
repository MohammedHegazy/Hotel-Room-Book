import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoomsAndGuests extends StatefulWidget {
  const RoomsAndGuests({super.key});

  @override
  State<RoomsAndGuests> createState() => _RoomsAndGuestsState();
}

int adults = 1;
int children = 0;

class _RoomsAndGuestsState extends State<RoomsAndGuests> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Guests"),
      ),
      body: Column(
        children: [
          Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Guests"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Adults"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            adults = adults - 1;
                                          });
                                        },
                                        icon: Icon(Icons.remove))),
                                Text("$adults"),
                                Center(
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            adults = adults + 1;
                                          });
                                        },
                                        icon: Icon(Icons.add))),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Children"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            children = children - 1;
                                          });
                                        },
                                        icon: Icon(Icons.remove))),
                                Text("$children"),
                                Center(
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            children = children + 1;
                                          });
                                        },
                                        icon: Icon(Icons.add))),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
