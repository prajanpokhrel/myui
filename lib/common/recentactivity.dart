import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RecentActivity extends StatelessWidget {
  final String name;
  final String image;
  final String stockoption;
  final String money;
  final String time;
  final IconData icons;
  final Color color;
  final Color background;

  const RecentActivity(
      {super.key,
      required this.image,
      required this.money,
      required this.name,
      required this.stockoption,
      required this.time,
      required this.icons,
      required this.color,
      required this.background});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset(
          image,
          color: Colors.white,
          height: 4.h,
          width: 10.w,
        ),
        radius: 20,
        backgroundColor: background,
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Row(
        children: [
          Icon(
            icons,
            color: color,
            size: 4.w,
          ),
          Text(
            stockoption,
            style: TextStyle(color: Colors.grey[400], fontSize: 10),
          ),
        ],
      ),
      trailing: Column(
        children: [
          Text(
            money,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(time),
        ],
      ),
    );
  }
}
