import 'package:flutter/material.dart';
import 'package:my_ui/common/button.dart';
import 'package:my_ui/common/text_field.dart';
import 'package:my_ui/screens/login_screen.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 30, top: 90),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Create account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MytextField(
                  controller: usernameController,
                  hintText: "Name",
                  obsecureText: false),
              SizedBox(
                height: 20,
              ),
              MytextField(
                  controller: emailController,
                  hintText: "Enter your email",
                  obsecureText: false),
              SizedBox(
                height: 20,
              ),
              MytextField(
                  controller: passwordController,
                  hintText: "Enter your password",
                  obsecureText: true),
              SizedBox(
                height: 20,
              ),
              Mybutton(
                  button: 'Sign In',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
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
    );
  }
}
