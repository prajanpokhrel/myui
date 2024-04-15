import 'package:flutter/material.dart';

class OtherButton extends StatelessWidget {
  final String button;
  final String images;
  const OtherButton({super.key, required this.button, required this.images});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
        side: BorderSide(style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(12),
      )),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(
            images,
            width: 16,
            height: 16,
          ),
          Text(
            button,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
