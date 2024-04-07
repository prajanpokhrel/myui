import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const List<String> list = <String>[
  'debit card 09**22',
  'debit card 090**2',
  'debit card 090**55'
];

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.w, top: 3.h),
      child: DropdownMenu<String>(
        inputDecorationTheme: InputDecorationTheme(
          focusColor: Colors.grey,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        width: 70.w,
        enableSearch: true,
        initialSelection: list.first,
        leadingIcon: Icon(Icons.atm),
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      ),
    );
  }
}
