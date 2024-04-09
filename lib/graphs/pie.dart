import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartWidgets extends StatefulWidget {
  @override
  _PieChartWidgetsState createState() => _PieChartWidgetsState();
}

class _PieChartWidgetsState extends State<PieChartWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PieChart(
          PieChartData(
            centerSpaceRadius: 50,
            sections: _generateChartData(),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> _generateChartData() {
    return List.generate(
      5,
      (i) {
        final double fontSize = 16;
        final double radius = 50;
        switch (i) {
          case 0:
            return PieChartSectionData(
              color: Colors.red,
              value: 40,
              title: '40%',
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff),
              ),
            );
          case 1:
            return PieChartSectionData(
              color: Colors.blue,
              value: 30,
              title: '30%',
              radius: radius,
              titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
            );
          case 2:
            return PieChartSectionData(
              showTitle: true,
              color: Colors.green,
              value: 15,
              title: '15%',
              radius: radius,
              titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
            );
          case 3:
            return PieChartSectionData(
              color: Colors.yellow,
              value: 10,
              title: '10%',
              radius: radius,
              titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
            );
          case 4:
            return PieChartSectionData(
              color: Colors.orange,
              value: 5,
              title: '5%',
              radius: radius,
              titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
            );
          default:
            return PieChartSectionData(
              color: Colors.grey, // or any default color
              value: 0, // or any default value
              title: '',
              radius: 0, // or any default radius
              titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
            );
        }
      },
    );
  }
}
