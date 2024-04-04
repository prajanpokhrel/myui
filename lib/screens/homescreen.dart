import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ui/common/card.dart';
import 'package:my_ui/common/recentactivity.dart';
import 'package:my_ui/common/slider.dart';
import 'package:my_ui/screens/carousel.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 10.w, bottom: 3.h),
        child: MaterialButton(
          onPressed: () {},
          color: Colors.black,
          textColor: Colors.white,
          child: Icon(
            Icons.add,
            size: 20,
          ),
          padding: EdgeInsets.all(3.h),
          shape: const CircleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        leadingWidth: 200,
        leading: InkWell(
          onTap: () {},
          child: Container(
            width: 200.w,
            height: 20.h,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 45.0),
                    child: Text(
                      "Good morning,",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22.0),
                  child: Text(
                    "James matriorty",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 5.h,
                width: 25.w,
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 222, 222),
                    borderRadius: BorderRadius.circular(12)),
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      "premium",
                      style: TextStyle(
                          color: Color.fromARGB(255, 211, 128, 34),
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 3.h),
                child: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/boy.png'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SliderCards(),
            ),
            SizedBox(
              height: 2.h,
            ),
            Cards(),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 39.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 244, 244),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 6.w, top: 2.h, bottom: 2.h),
                                child: Text(
                                  "Recent acitivity",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 6.0.w, top: 2.h, bottom: 2.h),
                                child: const Text(
                                  "See all",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 20.h,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  RecerntActivity(
                                    image: "assets/logo1.png",
                                    name: "Apple Stock",
                                    stockoption: "0.545 Stock options",
                                    money: "\$ -60,43",
                                    time: "11:40 AM",
                                    icons: Icons.arrow_forward,
                                    color: Colors.red,
                                    background: Colors.black,
                                  ),
                                  RecerntActivity(
                                    image: "assets/ethereum.png",
                                    name: "Ethereum(ETH)",
                                    stockoption: "0.002 crypto com",
                                    money: "\$+600,43",
                                    time: "09:78 PM",
                                    icons: Icons.arrow_back,
                                    color: Colors.green,
                                    background:
                                        Color.fromARGB(255, 141, 209, 143),
                                  ),
                                  RecerntActivity(
                                    image: "assets/ethereum.png",
                                    name: "Ethereum(ETH)",
                                    stockoption: "0.002 crypto com",
                                    money: "\$+600,43",
                                    time: "09:78 PM",
                                    icons: Icons.arrow_back,
                                    color: Colors.green,
                                    background:
                                        Color.fromARGB(255, 141, 209, 143),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card_rounded,
              color: Colors.grey,
            ),
            label: 'cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.graphic_eq_outlined,
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
      ),
    );
  }
}
