

import 'package:marketplace_app/domain/chart/chart_item.dart';

class ChartData {
  final double jan;
  final double fev;
  final double mar;
  final double avr;
  final double mai;
  final double jun;

  ChartData( {
    required this.jan,
    required this.fev,
    required this.mar,
    required this.avr,
    required this.mai,
    required this.jun,
});

  List<ChartItem> data = [];

  void initializeData () {
    data = [
      ChartItem(months: 'Jan 2023', value: 0),
      ChartItem(months: 'Fev 2023', value: 0),
      ChartItem(months: 'Avr 2023', value: 0),
      ChartItem(months: 'mai 2023', value: 0),
      ChartItem(months: 'Jui 2023', value: 0),
      ChartItem(months: 'Jun 2023', value: 0),
    ];

  }


}