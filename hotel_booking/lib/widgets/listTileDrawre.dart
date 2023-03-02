import 'package:flutter/material.dart';
import 'package:hotel_booking/const/colors.dart';

class TileDrawer extends StatefulWidget {
  String? title;
  IconData? icon;
  int? index;
  int? select;
  TileDrawer({this.icon, this.index, this.title, this.select});
  @override
  State<TileDrawer> createState() => _TileDrawerState();
}

class _TileDrawerState extends State<TileDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          widget.index = 0;
        });
      },
      title: Text(
        'Home',
        style: TextStyle(
          color: widget.select == widget.index ? kPrimaryColor : null,
        ),
      ),
      leading: Icon(
        Icons.home,
        color: widget.select == widget.index ? kPrimaryColor : null,
      ),
    );
  }
}
