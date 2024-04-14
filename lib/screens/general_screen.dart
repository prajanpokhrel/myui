import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
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
        ],
      ),
    );
  }
}
