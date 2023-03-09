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

class ColumnSeriesType1 extends StatefulWidget {
  const ColumnSeriesType1({
    Key? key,
    this.width,
    this.height,
    this.label1,
    this.label2,
    this.label3,
    this.label4,
    this.label5,
    this.label6,
    this.label7,
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.total,
    this.color,
    this.colorContainer,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? label1;
  final String? label2;
  final String? label3;
  final String? label4;
  final String? label5;
  final String? label6;
  final String? label7;
  final double? value1;
  final double? value2;
  final double? value3;
  final double? value4;
  final double? value5;
  final double? value6;
  final double? value7;
  final double? total;
  final Color? color;
  final Color? colorContainer;

  @override
  _ColumnSeriesType1State createState() => _ColumnSeriesType1State();
}

class ChartDataColumn {
  ChartDataColumn({this.x, this.y});
  final dynamic x;
  final double? y;
}

class _ColumnSeriesType1State extends State<ColumnSeriesType1> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartDataColumn> chartDataColumn = [
      ChartDataColumn(x: '${widget.label1}', y: widget.value1!),
      ChartDataColumn(x: '${widget.label2}', y: widget.value2!),
      ChartDataColumn(x: '${widget.label3}', y: widget.value3!),
      ChartDataColumn(x: '${widget.label4}', y: widget.value4!),
      ChartDataColumn(x: '${widget.label5}', y: widget.value5!),
      ChartDataColumn(x: '${widget.label6}', y: widget.value6!),
      ChartDataColumn(x: '${widget.label7}', y: widget.value7!),
    ];

    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                  color: widget.colorContainer,
                ),
                child: SfCartesianChart(
                  plotAreaBorderWidth: 0,
                  primaryXAxis: CategoryAxis(
                    labelStyle:
                        const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    axisLine: const AxisLine(width: 0),
                    labelPosition: ChartDataLabelPosition.outside,
                    majorTickLines: const MajorTickLines(width: 0),
                    majorGridLines: const MajorGridLines(width: 0),
                  ),
                  primaryYAxis: NumericAxis(
                      isVisible: false, minimum: 0, maximum: widget.total!),
                  tooltipBehavior: _tooltipBehavior,
                  series: <ColumnSeries<ChartDataColumn, String>>[
                    ColumnSeries<ChartDataColumn, String>(
                      width: 0.6,
                      borderRadius: BorderRadius.circular(4),
                      dataSource: chartDataColumn,
                      xValueMapper: (ChartDataColumn data, _) => data.x,
                      yValueMapper: (ChartDataColumn data, _) => data.y,
                      pointColorMapper: (ChartDataColumn data, _) =>
                          widget.color,
                    ),
                  ],
                ))));
  }
}
