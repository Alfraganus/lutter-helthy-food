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
                angle: 90,
                axisValue: 50,
                positionFactor: 0.9,
                widget: Column(
                  children: const[
                    Text('Total Calories', style:
                      TextStyle(
                        fontSize: 20,
                          fontWeight: FontWeight.w900
                      )),
                    SizedBox(height: 10),
                    Text('1284 kcal', style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900
                    ),),
                  ],
                ) )
          ]
        ),
      ]),
    );
  }
}
