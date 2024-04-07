import 'package:flutter/material.dart';
import 'package:my_ui/common/prime_cards.dart';
import 'package:my_ui/screens/register.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<Map<String, dynamic>> data = [
    {"name": "Overview", "image": "assets/list.png", "id": 1},
    {"name": "Transfer", "image": "assets/swap.png", "id": 2},
    {"name": "My Cards", "image": "assets/creditCard.png", "id": 3},
    {"name": "My Wallet", "image": "assets/wallet1.png", "id": 4},
    {"name": "Statics", "image": "assets/graph.png", "id": 5},
  ];
  Map<String, bool> selectedCards = {};
  int selectedId = -1;
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 6.h),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/prime.png"),
                ),
                title: Text(
                  "Prime Bank",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: "OpenSans"),
                ),
              ),
              for (Map<String, dynamic> item in data)
                PrimeCards(
                  id: item['id'],
                  name: item["name"]!,
                  image: item["image"]!,
                  tap: selectedId == item['id'],
                  onTap: () {
                    // Handle tap event here, for example, updating selectedId
                    setState(() {
                      selectedId = item['id'];
                    });
                  },
                ),
              SizedBox(
                height: 6.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    tap = true;
                  });
                },
                child: PrimeCards(
                  onTap: () {},
                  name: "Help",
                  id: 6,
                  image: "assets/handshake.png",
                  tap: selectedId == ['id'],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    tap = true;
                  });
                },
                child: PrimeCards(
                  onTap: () {},
                  id: 9,
                  name: "Setting",
                  image: "assets/setting.png",
                  tap: selectedId == ['id'],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.h, right: 35.w),
                child: Image.asset(
                  "assets/folder.png",
                  width: 40.w,
                  height: 15.h,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: Text(
                  "Upgrade to pro ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: Text(
                  "for Premium Features",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 8.h,
                width: 50.w,
                margin: EdgeInsets.only(right: 26.w),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Center(
                    child: Text(
                      "Go Premium",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
