import 'package:flutter/material.dart';
import 'package:my_ui/common/card.dart';

import 'package:my_ui/common/drawer.dart';

class PrimeScreen extends StatefulWidget {
  const PrimeScreen({super.key});

  @override
  State<PrimeScreen> createState() => _PrimeScreenState();
}

class _PrimeScreenState extends State<PrimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Prime Bank",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Cards()
          // Graph(),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
