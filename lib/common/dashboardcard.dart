import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 14.h,
          width: 85.w,
          margin: EdgeInsets.only(left: 1.w),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 247, 244, 244),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 48.w, top: 1.h),
                child: Text(
                  "Mainland Bogor",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 59.w,
                ),
                child: Text(
                  "Cloudy - 28°",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 8.h,
          width: 85.w,
          margin: EdgeInsets.only(left: 1.w),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 201, 196, 196),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Last update",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 150, 147, 147),
                      fontWeight: FontWeight.w400),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "8m ago",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      color: Colors.grey,
                      onPressed: () {},
                      icon: Icon(Icons.restart_alt)))
            ],
          ),
        ),
      ],
    );
  }
}
