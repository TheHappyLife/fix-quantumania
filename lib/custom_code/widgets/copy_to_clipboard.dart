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

import 'package:flutter/services.dart';

class CopyToClipboard extends StatefulWidget {
  const CopyToClipboard({Key? key, this.width, this.height, this.textToCopy})
      : super(key: key);

  final double? width;
  final double? height;
  final String? textToCopy;

  @override
  _CopyToClipboardState createState() => _CopyToClipboardState();
}

class _CopyToClipboardState extends State<CopyToClipboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: widget.textToCopy!));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Copied to clipboard: ${widget.textToCopy!}")));
      },
      child: Icon(Icons.content_copy, size: 20.0),
    ));
  }
}
