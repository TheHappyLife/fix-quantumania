// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'dart:async';

class DoughnutType2 extends StatefulWidget {
  const DoughnutType2(
      {Key? key,
      this.width,
      this.height,
      this.colorLabel,
      this.explodeOffset,
      this.strokeWidth,
      this.innerRadius,
      this.dataLabelSettings,
      this.colorContainer,
      this.dataInfo})
      : super(key: key);

  final double? width;
  final double? height;
  final Color? colorLabel;
  final double? explodeOffset;
  final double? strokeWidth;
  final double? innerRadius;
  final bool? dataLabelSettings;
  final Color? colorContainer;
  final List<dynamic>? dataInfo;

  @override
  _DoughnutType2State createState() => _DoughnutType2State();
}

class ChartData {
  ChartData({this.x, this.y, this.text, this.color});
  final String? x;
  final double? y;
  final String? text;
  final Color? color;
}

class _DoughnutType2State extends State<DoughnutType2> {
  late SelectionBehavior _selectionBehavior;
  late TooltipBehavior _tooltipBehavior;
  //late List<dynamic> data = [];

  @override
  void initState() {
    _selectionBehavior = SelectionBehavior(enable: true);
    _tooltipBehavior = TooltipBehavior(enable: true);

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [];

    //Timer.periodic(new Duration(seconds: 1), (timer) {
    // setState(() {
    //  data = widget.dataInfo!;
    // });
    // });

    print(widget.dataInfo);

    for (var item in widget.dataInfo!) {
      ChartData ctx = ChartData(
          x: 'Lable',
          y: item['percent']!,
          text: '${item['percent']!}%',
          color: widget.colorLabel!);

      chartData.add(ctx);
    }

    print('Huy OK');

    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                  color: widget.colorContainer,
                ),
                child: SfCircularChart(
                    tooltipBehavior: _tooltipBehavior,
                    series: <CircularSeries>[
                      // Renders radial bar chart
                      DoughnutSeries<ChartData, String>(
                          dataSource: chartData,
                          animationDuration: 300,

                          // explode
                          explodeAll: true,
                          explodeOffset: '${widget.explodeOffset}%',
                          explode: true,

                          //corner
                          // cornerStyle: CornerStyle.bothCurve,

                          radius: '100%',

                          // innerRadius
                          innerRadius: '${widget.innerRadius}%',

                          // stroke
                          strokeColor: Colors.white,
                          strokeWidth: widget.strokeWidth!,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          pointColorMapper: (ChartData data, _) => data.color,
                          dataLabelMapper: (ChartData data, _) => data.text,
                          dataLabelSettings: DataLabelSettings(
                              isVisible: widget.dataLabelSettings!),
                          selectionBehavior: _selectionBehavior,
                          enableTooltip: true)
                    ]))));
  }
}
