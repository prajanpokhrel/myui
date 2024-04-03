import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: CarouselSlider(
        options: CarouselOptions(
          enableInfiniteScroll: true,
          autoPlay: true,
          initialPage: 0,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          scrollDirection: Axis.horizontal,
          reverse: false,
          viewportFraction: 1,
          height: 30.h,
        ),
        items: <String>[
          "bankcard2",
          "bank",
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust the radius value as needed
                  image: DecorationImage(
                    image: AssetImage("assets/$i.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
