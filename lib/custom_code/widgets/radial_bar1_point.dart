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
import 'dart:ui' as ui;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class RadialBar1Point extends StatefulWidget {
  const RadialBar1Point({
    Key? key,
    this.width,
    this.height,
    this.label,
    this.value,
    this.colorContainer,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? label;
  final double? value;
  final Color? colorContainer;

  @override
  _RadialBar1PointState createState() => _RadialBar1PointState();
}

class ChartShaderData {
  ChartShaderData({this.x, this.y});
  final String? x;
  final num? y;
}

class _RadialBar1PointState extends State<RadialBar1Point> {
  late SelectionBehavior _selectionBehavior;
  late TooltipBehavior _tooltipBehavior;

  List<Color>? colors;
  List<double>? stops;

  @override
  void initState() {
    _selectionBehavior = SelectionBehavior(enable: true);
    _tooltipBehavior = TooltipBehavior(enable: true);

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    stops!.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartShaderData> chartShaderData = [
      ChartShaderData(x: 'New York', y: 25),
    ];
    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                  color: widget.colorContainer,
                ),
                child: Directionality(
                  textDirection: ui.TextDirection.rtl,
                  child: SfCircularChart(
                      key: GlobalKey(),
                      onCreateShader: (ChartShaderDetails chartShaderDetails) {
                        return ui.Gradient.linear(
                            chartShaderDetails.outerRect.topRight,
                            chartShaderDetails.outerRect.centerLeft,
                            colors!,
                            stops);
                      },
                      series: <RadialBarSeries<ChartShaderData, String>>[
                        RadialBarSeries<ChartShaderData, String>(
                          maximumValue: 100,
                          dataSource: chartShaderData,
                          cornerStyle: CornerStyle.bothCurve,
                          radius: '100%',
                          gap: '15%',
                          innerRadius: '80%',
                          xValueMapper: (ChartShaderData data, _) => data.x,
                          yValueMapper: (ChartShaderData data, _) => data.y,
                        )
                      ],
                      tooltipBehavior: _tooltipBehavior),
                ))));
  }

  dynamic _resolveTransform(Rect bounds, TextDirection textDirection) {
    final GradientTransform transform = GradientRotation(_degreeToRadian(-90));
    return transform
        .transform(bounds, textDirection: ui.TextDirection.rtl)!
        .storage;
  }

  double _degreeToRadian(int deg) => deg * (3.141592653589793 / 180);
}
