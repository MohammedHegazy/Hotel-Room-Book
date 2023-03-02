import 'package:flutter/material.dart';
import 'package:hotel_booking/view/auth/auth_page.dart';
import 'package:hotel_booking/view/hotels/home_hotel.dart';
import 'package:hotel_booking/view/hotels/rooms_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        "/": (context) => HomeHotel(),
        "Authpage": (context) => AuthPage(),
        "Rooms": (context) => RoomsPage()
      },
      initialRoute: "/",
    );
  }
}
