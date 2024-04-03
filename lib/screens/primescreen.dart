import 'package:flutter/material.dart';
import 'package:my_ui/common/card.dart';

class PrimeScreen extends StatelessWidget {
  const PrimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Cards(),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/prime.png"),
              ),
              title: Text(
                "Prime Bank",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "OpenSans"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
