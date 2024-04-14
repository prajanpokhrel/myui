import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThumbSlider extends StatefulWidget {
  const ThumbSlider({super.key});

  @override
  State<ThumbSlider> createState() => _ThumbSliderState();
}

class _ThumbSliderState extends State<ThumbSlider> {
  double _currentSliderValue = 'value'.length.toDouble();
  double _currentSliderValue1 = 'value'.length.toDouble();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 24.h,
                width: 42.w,
                margin: EdgeInsets.only(left: 6.w),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 243, 244),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Text(
                            "Nutrition",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          Spacer(),
                          Image.asset(
                            "assets/checkmark.png",
                            width: 18,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Text(
                        "$_currentSliderValue%",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: Slider(
                        divisions: 10,
                        activeColor: Color.fromARGB(255, 60, 184, 142),
                        value: _currentSliderValue,
                        max: 100,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 24.h,
                width: 42.w,
                // margin: EdgeInsets.only(left: 26.w),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 243, 244),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Text(
                            "Water",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/checkmark.png",
                            width: 18,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Text(
                        "$_currentSliderValue1%",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: Slider(
                        divisions: 10,
                        activeColor: Color.fromARGB(255, 60, 184, 142),
                        value: _currentSliderValue1,
                        max: 100,
                        label: _currentSliderValue1.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue1 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
