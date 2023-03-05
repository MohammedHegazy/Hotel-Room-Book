import 'package:flutter/material.dart';
import 'package:hotel_booking/const/colors.dart';

class TextInputEmailLogin extends StatelessWidget {
  String? hint;
  TextInputEmailLogin({this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        cursorColor: kSecendryColor,
        style: TextStyle(
          fontSize: 14,
          color: kBaseThirdyColor,
        ),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  color: kSecendryColor,
                )),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  color: kSecendryColor,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  color: kSecendryColor,
                )),
            focusColor: kPrimaryColor,
            hintText: "$hint",
            hintStyle: TextStyle(color: Color.fromARGB(255, 126, 129, 132))),
      ),
    );
  }
}
