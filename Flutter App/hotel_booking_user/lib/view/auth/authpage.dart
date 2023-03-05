import 'package:flutter/material.dart';
import 'package:hotel_booking_user/const/colors.dart';

import '../../widgets/textInputEmail.dart';
import '../../widgets/textInputPassword.dart';
import '../../widgets/textInputSignUp.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                foregroundColor: kPrimaryColor,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/");
                  },
                  icon: Icon(Icons.arrow_back),
                  color: kPrimaryColor,
                )),
          )),
          SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Image.asset(
                  "image/Logo/logo.png",
                  width: width * 0.7,
                  height: height * 0.2,
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TabBar(
                            labelColor: kPrimaryColor,
                            indicatorColor: kPrimaryColor,
                            unselectedLabelColor: kSecendryColor,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Tab(
                                  child: Text("Login",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500))),
                              Tab(
                                child: Text("SignUp",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  TextInputEmailLogin(
                                    hint: "Email Address",
                                  ),
                                  TextInputPasswordLogin(
                                    hint: "Password",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: width * 0.6,
                                          height: height * 0.06,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateColor
                                                          .resolveWith((states) =>
                                                              kPrimaryColor)),
                                              onPressed: () {},
                                              child: Text(
                                                "Login",
                                                style: TextStyle(
                                                    color: kBaseColor,
                                                    fontSize: 18),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Forget Password?",
                                          style: TextStyle(
                                              color: kSecendryColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  TextInputSignUp(hint: "Name"),
                                  TextInputSignUp(hint: "Age"),
                                  TextInputEmailLogin(
                                    hint: "Email Address",
                                  ),
                                  TextInputPasswordLogin(
                                    hint: "Password",
                                  ),
                                  TextInputPasswordLogin(
                                    hint: "Confirm Password",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: width * 0.35,
                                          height: height * 0.06,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateColor
                                                          .resolveWith((states) =>
                                                              kPrimaryColor)),
                                              onPressed: () {},
                                              child: Text(
                                                "Create User",
                                                style: TextStyle(
                                                    color: kBaseColor,
                                                    fontSize: 16),
                                              )),
                                        ),
                                        SizedBox(
                                          width: width * 0.35,
                                          height: height * 0.06,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateColor
                                                          .resolveWith((states) =>
                                                              kPrimaryColor)),
                                              onPressed: () {},
                                              child: Text(
                                                "Creat Hotel",
                                                style: TextStyle(
                                                    color: kBaseColor,
                                                    fontSize: 16),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
