import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class grafico05 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  grafico05({Key? key}) : super(key: key);
 
  @override
  grafico05State createState() => grafico05State();
}
 
class grafico05State extends State<grafico05> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
 
  @override
  void initState() {
    data = [
      _ChartData('CHN', 38, 10, 21, 29),
      _ChartData('GER', 32, 12, 19, 30),
      _ChartData('RUS', 37, 7, 17, 24),
      _ChartData('BRZ', 34, 9, 16, 27),
      _ChartData('IND', 35, 13, 18, 31)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
            tooltipBehavior: _tooltip,
            series: <CartesianSeries<_ChartData, String>>[
              CandleSeries<_ChartData, String>(
                  dataSource: data,
                  xValueMapper: (_ChartData data, _) => data.x,
                  highValueMapper: (_ChartData data, _) => data.high,
                  lowValueMapper: (_ChartData data, _) => data.low,
                  openValueMapper: (_ChartData data, _) => data.open,
                  closeValueMapper: (_ChartData data, _) => data.close,
                  name: 'Gold',
                )]));
  }
}
 
class _ChartData {
  _ChartData(this.x, this.high, this.low, this.open, this.close);
 
  final String x;
  final double high;
  final double low;
  final double open;
  final double close;
}