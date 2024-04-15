import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GeneralCards extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String time;
  const GeneralCards(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.h,
      width: 90.w,
      margin: EdgeInsets.only(left: 1.w),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 241, 243, 242),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset(
          image,
          width: 8.h,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: const Color.fromARGB(255, 114, 112, 112),
          ),
        ),
        trailing: Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Text(
            time,
            style: TextStyle(
              fontSize: 13,
              color: const Color.fromARGB(255, 114, 112, 112),
            ),
          ),
        ),
      ),
    );
  }
}
