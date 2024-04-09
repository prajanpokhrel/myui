import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrimeCards extends StatefulWidget {
  final String name;
  final String image;
  final int id;
  final bool tap;
  final VoidCallback onTap;

  const PrimeCards({
    Key? key,
    required this.name,
    required this.id,
    required this.image,
    required this.tap,
    required this.onTap,
  }) : super(key: key);

  @override
  State<PrimeCards> createState() => _PrimeCardsState();
}

class _PrimeCardsState extends State<PrimeCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.only(left: 1.w, right: 1.w),
        child: ListTile(
          selected: widget.tap,
          selectedTileColor: widget.tap
              ? const Color.fromARGB(255, 201, 224, 169)
              : Colors.white,
          selectedColor: Colors.black,
          shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
          leading: Image.asset(
            widget.image,
            width: 6.w,
          ),
          title: Text(
            widget.name,
            style: TextStyle(fontSize: 16),
          ),
          onTap: () {
            widget.onTap(); // Invoke the onTap callback
          },
        ),
      ),
    );
  }
}
