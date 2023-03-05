import 'package:flutter/material.dart';
import 'package:hotel_booking_user/const/colors.dart';
import 'package:hotel_booking_user/view/auth/authpage.dart';
import 'package:hotel_booking_user/view/home.dart';
import 'package:hotel_booking_user/view/rooms_geusts.dart';
import 'package:hotel_booking_user/view/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: kPrimaryColor,
            centerTitle: true,
          ),
          fontFamily: 'Poppins',
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: kPrimaryColor,
            selectionColor: kPrimaryColor,
            selectionHandleColor: kPrimaryColor,
          ),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor)),
      routes: {
        "splash": (context) => Splash(),
        "/": (context) => HomePage(),
        "AuthPage": (context) => AuthPage(),
        "RoomsAndGuests": (context) => RoomsAndGuests(),
      },
      initialRoute: "/",
    );
  }
}
