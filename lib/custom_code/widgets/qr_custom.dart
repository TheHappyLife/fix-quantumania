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

import 'package:qr_flutter/qr_flutter.dart';

class QrCustom extends StatefulWidget {
  const QrCustom({
    Key? key,
    this.width,
    this.height,
    this.data,
    this.brColor,
    this.frColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? data;
  final Color? brColor;
  final Color? frColor;

  @override
  _QrCustomState createState() => _QrCustomState();
}

class _QrCustomState extends State<QrCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: QrImage(
            data: widget.data!,
            version: 3,
            padding: const EdgeInsets.all(16.0),
            backgroundColor: widget.brColor!,
            foregroundColor: widget.frColor!,
            size: 200.0,
            gapless: false,
          ),
        ),
      ),
    );
  }
}
