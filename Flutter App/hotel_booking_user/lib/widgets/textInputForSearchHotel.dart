import 'package:flutter/material.dart';
import 'package:hotel_booking_user/const/colors.dart';

class TextInputSearchHotel extends StatelessWidget {
  String? hint;
  TextInputSearchHotel({this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      style: TextStyle(
        fontSize: 14,
        color: kBaseThirdyColor,
      ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: kPrimaryColor,
              )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: kPrimaryColor,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: kPrimaryColor,
              )),
          focusColor: kPrimaryColor,
          hintText: "Search",
          hintStyle: TextStyle(color: Color.fromARGB(255, 126, 129, 132))),
    );
  }
}
