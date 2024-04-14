import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnGraph extends StatefulWidget {
  const ColumnGraph({super.key});

  @override
  State<ColumnGraph> createState() => _ColumnGraphState();
}

class _ColumnGraphState extends State<ColumnGraph> {
  late List<_ChartData> data;
  List<_ChartData> data1 = [
    _ChartData('Sun', 20),
    _ChartData('mon', 10),
    _ChartData('tue', 40),
    _ChartData('wed', 40),
    _ChartData('Thu', 5),
    _ChartData('Fri', 0),
    _ChartData('Sat', 20)
  ];

  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Sun', 30),
      _ChartData('mon', 15),
      _ChartData('tue', 30),
      _ChartData('wed', 6.4),
      _ChartData('Thu', 8),
      _ChartData('Fri', 20),
      _ChartData('Sat', 14)
    ];

    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 12.h),
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          SfCartesianChart(
            primaryXAxis: const CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
            tooltipBehavior: _tooltip,
            series: <CartesianSeries<_ChartData, String>>[
              ColumnSeries<_ChartData, String>(
                borderRadius: BorderRadius.circular(12),
                width: 0.22.w,
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                color: const Color.fromARGB(255, 150, 151, 151),
                spacing: 0.4,
              ),
              ColumnSeries<_ChartData, String>(
                borderRadius: BorderRadius.circular(12),
                width: 0.22.w,
                dataSource: data1,
                xValueMapper: (_ChartData data1, _) => data1.x,
                yValueMapper: (_ChartData data1, _) => data1.y,
                color: Color.fromARGB(255, 17, 233, 204),
                spacing: 0.4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
