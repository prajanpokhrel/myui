import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrimeCards extends StatefulWidget {
  final String name;
  final String image;

  const PrimeCards({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  State<PrimeCards> createState() => _PrimeCardsState();
}

class _PrimeCardsState extends State<PrimeCards> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 1.w, right: 1.w),
          child: ListTile(
            selected: isSelected,
            selectedTileColor: Color.fromARGB(255, 201, 224, 169),
            selectedColor: Colors.black,
            shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(18),
            ),
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            leading: Image.asset(
              widget.image,
              width: 6.w,
            ),
            title: Text(
              widget.name,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
