import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ui/common/dashboardcard.dart';
import 'package:my_ui/common/thumbslider.dart';
import 'package:my_ui/graphs/colum_graph.dart';
import 'package:my_ui/graphs/graph.dart';
import 'package:my_ui/screens/homescreen.dart';
import 'package:my_ui/screens/sendmoney.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final dio = Dio();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        backgroundColor: const Color.fromARGB(255, 248, 245, 245),
        leadingWidth: 200,
        leading: Title(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.only(left: 6.w, top: 25),
            child: Text(
              "Dashboard",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 12,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12, right: 6.w),
            child: CircleAvatar(
              maxRadius: 18,
              backgroundImage: AssetImage(
                "assets/boy.png",
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DashBoardCard(),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 12.h,
              width: 85.w,
              margin: EdgeInsets.only(left: 1.w),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 60, 184, 142),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h, top: 2.h, right: 2.h),
                    child: Row(
                      children: [
                        Text(
                          "Temperature",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "32°",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h, top: 1.h, right: 2.h),
                    child: Row(
                      children: [
                        Text(
                          "Active Tools",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "5 Active ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ThumbSlider(),
            SizedBox(
              height: 6.h,
            ),
            Container(
              height: 70.h,
              width: 85.w,
              // margin: EdgeInsets.only(left: 26.w),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 243, 244),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, top: 3.h),
                    child: Row(
                      children: [
                        Text(
                          "Plant conditon ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            "Good",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Icon(
                            size: 15,
                            color: Color.fromARGB(255, 60, 184, 142),
                            Icons.arrow_outward),
                        Container(
                          height: 5.h,
                          width: 15.w,
                          margin: EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 224, 245, 238),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "1.52",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 184, 142),
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  ColumnGraph(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card_rounded,
              color: Colors.grey,
            ),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.graphic_eq,
              color: Colors.grey,
            ),
            label: 'Graph',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SendMoneyScreen(),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Graph(),
                ),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashBoardPage(),
                ),
              );
              break;
          }
        },
      ),
    );
  }
}
