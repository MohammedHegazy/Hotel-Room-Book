import 'package:flutter/material.dart';

import 'package:hotel_booking/const/colors.dart';

class customDarwer extends StatefulWidget {
  @override
  State<customDarwer> createState() => _customDarwerState();
}

int index = 0;

class _customDarwerState extends State<customDarwer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
            onTap: () {
              index != 0
                  ? Navigator.pushReplacementNamed(
                      context,
                      "/",
                    )
                  : null;
              setState(() {
                index = 0;
              });
            },
            title: Text(
              'Home',
              style: TextStyle(
                color: index == 0 ? kPrimaryColor : null,
              ),
            ),
            leading: Icon(
              Icons.home,
              color: index == 0 ? kPrimaryColor : null,
            ),
          ),
          ListTile(
            onTap: () {
              index != 1
                  ? Navigator.pushReplacementNamed(context, "Rooms")
                  : null;
              setState(() {
                index = 1;
              });
            },
            title: Text(
              'Rooms',
              style: TextStyle(
                color: index == 1 ? kPrimaryColor : null,
              ),
            ),
            leading: Icon(
              Icons.room_preferences,
              color: index == 1 ? kPrimaryColor : null,
            ),
          ),
          ListTile(
            onTap: () {
              index != 2
                  ? Navigator.pushReplacementNamed(
                      context,
                      "/",
                    )
                  : null;
              setState(() {
                index = 2;
              });
            },
            title: Text(
              'Reservation',
              style: TextStyle(
                color: index == 2 ? kPrimaryColor : null,
              ),
            ),
            leading: Icon(
              Icons.bed,
              color: index == 2 ? kPrimaryColor : null,
            ),
          ),
          ListTile(
            onTap: () {
              index != 3
                  ? Navigator.pushReplacementNamed(
                      context,
                      "/",
                    )
                  : null;
              setState(() {
                index = 3;
              });
            },
            title: Text(
              'Reservation requests',
              style: TextStyle(
                color: index == 3 ? kPrimaryColor : null,
              ),
            ),
            leading: Icon(
              Icons.access_time_sharp,
              color: index == 3 ? kPrimaryColor : null,
            ),
          ),
        ]).toList(),
      ),
    );
  }
}
