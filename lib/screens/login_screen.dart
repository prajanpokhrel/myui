import 'package:flutter/material.dart';
import 'package:my_ui/common/button.dart';
import 'package:my_ui/common/otherbutton.dart';
import 'package:my_ui/common/text_field.dart';
import 'package:my_ui/screens/homescreen.dart';
import 'package:my_ui/screens/register.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 30, top: 80),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 80,
                  backgroundImage: AssetImage("assets/lape.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "LAPE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "Let's  Sign You In",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 10,
                ),
                MytextField(
                  controller: usernameController,
                  hintText: "Email address ",
                  obsecureText: false,
                ),
                SizedBox(height: 10),
                MytextField(
                  controller: passwordController,
                  hintText: "Password",
                  obsecureText: true,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }),
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
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OtherButton(
                        button: 'Google',
                        images: 'assets/search.png',
                      ),
                      OtherButton(
                        button: 'Apple',
                        images: 'assets/apple.png',
                      ),
                    ],
                  ),
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
    );
  }
}
