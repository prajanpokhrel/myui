import 'package:flutter/material.dart';
import 'package:my_ui/common/cards.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  final List<String> filters = const [
    'General',
    'Acitivity',
    'Information',
    'About Us',
  ];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 15.h,
        title: const Text("Mainland Bogor"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filters.length,
                  itemBuilder: (context, index) {
                    final filter = filters[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              selectedFilter = filter;
                            },
                          );
                        },
                        child: Chip(
                          side: const BorderSide(
                            color: Color.fromARGB(245, 207, 207, 205),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: selectedFilter == filter
                                ? const Color.fromARGB(255, 0, 0, 0)
                                : Color.fromARGB(255, 129, 127, 127),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 1.h, horizontal: 2.h),
                          label: Text(filter),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(right: 32.h),
              child: Text(
                "Need Action",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            SizedBox(height: 2.h),
            GeneralCards(
              image: "assets/caution.png",
              title: "Drainage clogged!",
              time: "48m",
              subtitle: "System  warning",
            ),
            SizedBox(height: 3),
            Container(
              height: 10.h,
              width: 90.w,
              margin: EdgeInsets.only(left: 1.w),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 243, 242),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      top: 2.h,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Action Required!",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 5.h,
                          width: 25.w,
                          margin: EdgeInsets.only(right: 4.w),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 231, 230, 229),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              "Details",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 2.h),
                  child: Text(
                    "Newest Activity",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 4.h, top: 2.h),
                  child: Text(
                    "Clear",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: const Color.fromARGB(255, 82, 80, 80)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            GeneralCards(
              image: "assets/water-pump.png",
              title: "Water pump activated",
              time: "12m",
              subtitle: "System  ",
            ),
            SizedBox(
              height: 2.h,
            ),
            GeneralCards(
              image: "assets/water-pump.png",
              title: "Water Valve open to run",
              time: "4h",
              subtitle: "System  ",
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 2.h),
                  child: Text(
                    "People Activity",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 4.h, top: 2.h),
                      child: Text(
                        "Clear",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            color: const Color.fromARGB(255, 82, 80, 80)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            GeneralCards(
              image: "assets/water-pump.png",
              title: "Devi Nurma adding ",
              time: "",
              subtitle: "52 TAnam plant cup addded  ",
            ),
          ],
        ),
      ),
    );
  }
}
