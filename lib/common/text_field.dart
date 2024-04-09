import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MytextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final String? Function(String?)? validator;
  // final String icons;
  const MytextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
          top: 2,
        ),
        child: TextFormField(
          controller: controller,
          obscureText: obsecureText,
          validator: validator,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14)),
        ),
      ),
    );
  }
}
