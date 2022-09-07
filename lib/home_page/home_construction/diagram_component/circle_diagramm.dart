import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CircleDiagramm extends StatelessWidget {
  CircleDiagramm({Key? key}) : super(key: key);
  final dataMap = <String, double>{
    "Busy": 10,
    "Free": 4,
    "TechnalicBoard":1,
  };

  final colorList = <Color>[
    const Color(0xFFe2e2a4),
    const Color(0xFF509d4f),
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: EdgeInsets.symmetric(horizontal: 16),
        child: PieChart(
          dataMap: dataMap,
          chartRadius: MediaQuery.of(context).size.width / 2.5,
          initialAngleInDegree: 90,
          chartType: ChartType.disc,
          colorList: colorList,
          chartValuesOptions: ChartValuesOptions(
            showChartValuesInPercentage: true,
            showChartValues: false,
          ),
          legendOptions: LegendOptions(
            showLegends: false,
          ),

          totalValue: 15,
        ),

    );
  }
}
