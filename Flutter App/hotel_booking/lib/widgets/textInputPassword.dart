import 'package:flutter/material.dart';
import 'package:hotel_booking/const/colors.dart';

class TextInputPasswordLogin extends StatefulWidget {
  String? hint;
  TextInputPasswordLogin({this.hint});

  @override
  State<TextInputPasswordLogin> createState() => _TextInputPasswordLoginState();
}

bool showPass = true;

class _TextInputPasswordLoginState extends State<TextInputPasswordLogin> {
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
        obscureText: showPass,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  showPass = !showPass;
                });
              },
              child: Icon(
                Icons.remove_red_eye,
                color: showPass ? kPrimaryColor : kSecendryColor,
              ),
            ),
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
            hintText: "${widget.hint}",
            hintStyle: TextStyle(color: Color.fromARGB(255, 126, 129, 132))),
      ),
    );
  }
}
