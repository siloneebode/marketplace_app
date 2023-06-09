

import 'chart_item.dart';

class ChartData {
  final double sunAmount ;

  ChartData(this.sunAmount);

  List<ChartItem> chartData = [];

  void initialise () {
    chartData = [
      ChartItem(0,sunAmount)
    ];
  }
}