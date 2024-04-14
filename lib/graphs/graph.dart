import 'package:flutter/material.dart';
import 'package:my_ui/graphs/colum_graph.dart';

import 'package:my_ui/graphs/piechart.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class Graph extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Graph({Key? key}) : super(key: key);

  @override
  GraphState createState() => GraphState();
}

class GraphState extends State<Graph> {
  List<_SalesData> data = [
    _SalesData(
      'jan',
      "20",
    ),
    _SalesData('Feb', "28"),
    _SalesData('Mar', "50"),
    _SalesData('Apr', "25"),
    _SalesData('May', "5")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graphs'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(14),
          child: Column(
            children: [
              SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CartesianSeries<_SalesData, String>>[
                  LineSeries<_SalesData, String>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                      name: 'Graph ',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true))
                ],
              ),
              const ColumnGraph(),
              const PieChartWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, String sales) : sales = double.parse(sales);

  final String year;
  final double sales;
}
