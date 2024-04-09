import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:my_ui/screens/homescreen.dart';

class Mybutton extends StatelessWidget {
  final String button;
  final void Function() onPressed;
  const Mybutton({super.key, required this.onPressed, required this.button});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 200.w,
      margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(
            button,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
