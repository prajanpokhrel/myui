import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class OrderCards extends StatelessWidget {
  const OrderCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10.h,
          width: 85.w,
          margin: EdgeInsets.only(left: 2.w),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 244, 244),
            borderRadius: BorderRadius.circular(30),
          ),
          // child: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Image.asset("assets/checkout.png"),
          // ),
        ),
      ],
    );
  }
}
