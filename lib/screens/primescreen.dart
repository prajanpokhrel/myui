import 'package:flutter/material.dart';
import 'package:my_ui/common/card.dart';
import 'package:my_ui/common/prime_cards.dart';
import 'package:my_ui/screens/register.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrimeScreen extends StatefulWidget {
  const PrimeScreen({super.key});

  @override
  State<PrimeScreen> createState() => _PrimeScreenState();
}

class _PrimeScreenState extends State<PrimeScreen> {
  List<Map<String, String>> data = [
    {
      "name": "Overview",
      "image": "assets/list.png",
    },
    {
      "name": "Transfer",
      "image": "assets/swap.png",
    },
    {
      "name": "My Cards",
      "image": "assets/creditCard.png",
    },
    {
      "name": "My Wallet",
      "image": "assets/wallet1.png",
    },
    {
      "name": "Statics",
      "image": "assets/graph.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Prime Bank",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        children: [
          Cards(),
        ],
      ),
      drawer: Drawer(
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
                for (Map<String, String> item in data)
                  PrimeCards(
                    name: item["name"]!,
                    image: item["image"]!,
                  ),
                SizedBox(
                  height: 6.h,
                ),
                PrimeCards(name: "Help", image: "assets/handshake.png"),
                PrimeCards(name: "Setting", image: "assets/setting.png"),
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
      ),
    );
  }
}
