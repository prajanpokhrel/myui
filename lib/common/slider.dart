import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SliderCards extends StatefulWidget {
  const SliderCards({super.key});

  @override
  State<SliderCards> createState() => _SliderCardsState();
}

class _SliderCardsState extends State<SliderCards> {
  final List<Widget> imageSliders = <String>[
    "assets/bankcard2.png",
    "assets/bank.png",
  ]
      .map(
        (item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      // padding: EdgeInsets.symmetric(
                      //     vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        ' ${<String>[
                          "bankcard2",
                          "bank",
                        ].indexOf(item)} ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      )
      .toList();
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 30.h,
              viewportFraction: 1,
              aspectRatio: 2.0,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
            ),
            items: imageSliders,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <String>[
            "assets/bankcard2.png",
            "assets/bank.png",
          ].asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
