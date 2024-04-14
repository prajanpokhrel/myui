import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ui/screens/general_screen.dart';

import 'package:my_ui/screens/primescreen.dart';
import 'package:my_ui/screens/sendmoney.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10.h,
          width: 100.w,
          // margin: EdgeInsets.only(left: 18),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 244, 244),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h, left: 20),
                  child: Image.asset(
                    "assets/wallet.png",
                    width: 10.w,
                    height: 6.h,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrimeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 1.h, left: 2.w),
                    child: const Text(
                      "Withdraw",
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 1.h, right: 2.w),
                  child: Image.asset(
                    "assets/deposit.png",
                    width: 10.w,
                    height: 6.h,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GeneralScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 1.h, right: 20),
                    child: const Text(
                      "Deposit",
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
