import 'package:flutter/material.dart';

class OtherButton extends StatelessWidget {
  final String button;
  final String images;
  const OtherButton({super.key, required this.button, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            // color: Colors.red,

            spreadRadius: 0.5,
          ),
        ],
        color: Colors.white,
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  images,
                  width: 16,
                  height: 16,
                ),
              ),
              Text(
                button,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
