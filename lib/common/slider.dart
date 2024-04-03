import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

class SliderCarousel extends StatelessWidget {
  const SliderCarousel({super.key});

  static const List<String> sampleImages = [
    "assets/bank.png"
        "assets/bankcard2.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 10,
          ),
          FanCarouselImageSlider(
            imagesLink: sampleImages,
            isAssets: true,
            autoPlay: true,
          ),
        ],
      ),
    ));
  }
}
