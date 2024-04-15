import 'package:flutter/material.dart';
import 'package:my_ui/common/button.dart';
import 'package:my_ui/common/otherbutton.dart';
import 'package:my_ui/common/text_field.dart';
import 'package:my_ui/screens/homescreen.dart';

import 'package:my_ui/screens/register.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 6.w, top: 80),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 80,
                      backgroundImage: AssetImage("assets/prime.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "PRIME BANK",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: "OpenSans"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h, top: 1.h),
                      child: Text(
                        "Let's  Sign You In",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 10,
                    ),
                    MytextField(
                      controller: usernameController,
                      hintText: "Enter your email",
                      obsecureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your email ";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    MytextField(
                      controller: passwordController,
                      hintText: "Enter your password",
                      obsecureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'password cannot be empty';
                        } else if (value == null || value.length < 6) {
                          return "Please enter password more than 6 characters";
                        }
                        return null;
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Mybutton(
                      button: 'Login',
                      onPressed: () {
                        var isValidate = _formKey.currentState!.validate();
                        if (isValidate) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(" Or login with "),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        OtherButton(
                          button: 'Google',
                          images: 'assets/search.png',
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 4.h),
                          child: OtherButton(
                            button: 'Apple',
                            images: 'assets/apple.png',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
