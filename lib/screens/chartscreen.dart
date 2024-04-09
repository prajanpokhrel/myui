import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/calendar.png",
                  width: 7.w,
                ),
              ),
              title: Text(
                "Thursaday , October 22",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Friday, October 22",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Image.asset(
                "assets/filter.png",
                width: 6.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
