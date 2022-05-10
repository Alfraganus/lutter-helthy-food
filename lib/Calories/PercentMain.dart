import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class PercentMainIndicator extends StatelessWidget {
  const PercentMainIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SfRadialGauge(axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 100,
          showLabels: false,
          showTicks: false,
          axisLineStyle: AxisLineStyle(
            thickness: 0.2,
            cornerStyle: CornerStyle.bothCurve,
            color: Color.fromARGB(30, 0, 169, 181),
            thicknessUnit: GaugeSizeUnit.factor,
          ),
        )
      ]),
    );
  }
}
