import 'package:flutter/material.dart';
import 'package:my_ui/common/button.dart';
import 'package:my_ui/common/text_field.dart';
import 'package:my_ui/screens/login_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // text editing controller
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(left: 8.w, top: 20.h),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Create account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MytextField(
                    controller: usernameController,
                    hintText: "Name",
                    obsecureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MytextField(
                    controller: emailController,
                    hintText: "Enter your email",
                    obsecureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your email ";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                  SizedBox(
                    height: 20,
                  ),
                  Mybutton(
                    button: 'Sign In',
                    onPressed: () {
                      var isValidate = _formKey.currentState!.validate();
                      if (isValidate) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Text("Alreay  have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
