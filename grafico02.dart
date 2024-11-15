import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class grafico02 extends StatelessWidget {
  const grafico02({super.key});

  @override
  Widget build(BuildContext context) {
    List<NumericData> numericDataList = [
      NumericData(domain: 1, measure: 3),
      NumericData(domain: 2, measure: 5),
      NumericData(domain: 3, measure: 9),
      NumericData(domain: 4, measure: 6.5),
    ];
    List<NumericData> numericDataList2 = [
      NumericData(domain: 1, measure: 5),
      NumericData(domain: 2, measure: 9),
      NumericData(domain: 3, measure: 7),
      NumericData(domain: 4, measure: 12),
    ];
    return Container(
      // color: Colors.purple[100],
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: DChartLineN(
          allowSliding: false,
          animate: true,
          animationDuration: const Duration(milliseconds: 300),
          flipVertical: false,
          configRenderLine: ConfigRenderLine(
            areaOpacity: 0.3,
            includeArea: true,
            dashPattern: [10, 10, 20],
            includeLine: true,
            includePoints: true,
            radiusPx: 3.5,
            // roundEndCaps: true,
            strokeWidthPx: 2,
          ),
          areaColor: (group, numericData, index) {
            if (group.id == 'id') {
              return Colors.red[100];
            }
            return Colors.blue.shade100;
          },
          layoutMargin: LayoutMargin(20, 20, 20, 20),
          dashPattern: (group, numericData, index) {
            if (group.id == 'id') {
              if (numericData.domain == 1) {
                return [5];
              }
              if (numericData.domain == 3) {
                return [10];
              }
              return [];
            }
            return [20, 20];
          },
          domainAxis: DomainAxis(
              // numericViewport: NumericViewport(1, 2),
              ),
          measureAxis: MeasureAxis(
              // numericViewport: NumericViewport(0, 9),
              ),
          groupList: [
            NumericGroup(
              id: 'id2',
              data: numericDataList2,
              color: Colors.purple,
            ),
            NumericGroup(
              id: 'id',
              data: numericDataList,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}