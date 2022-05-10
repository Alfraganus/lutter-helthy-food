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
          showTicks: true,
          minorTickStyle: MinorTickStyle(
            color: HexColor('#E5737D'),
            thickness: 3
          ),
          majorTickStyle: MajorTickStyle(
            color: HexColor('#E5737D'),
            thickness: 3
          ),
          axisLineStyle: AxisLineStyle(
            thickness: 0.3,
            cornerStyle: CornerStyle.bothCurve,
            color: Colors.transparent,
            thicknessUnit: GaugeSizeUnit.factor,
          ),
            pointers: <GaugePointer>[
              RangePointer(
                color: HexColor('#E5737D'),
                value: 75,
                cornerStyle: CornerStyle.bothCurve,
                width: 0.2,
                sizeUnit: GaugeSizeUnit.factor,
              )
            ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                positionFactor: 0.1,
                angle: 90,
                widget: Text('27 / 100',
                  style: TextStyle(fontSize: 11),
                ))
          ]
        ),
      ]),
    );
  }
}
