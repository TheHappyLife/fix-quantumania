import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_rounded1_model.dart';
export 'item_rounded1_model.dart';

class ItemRounded1Widget extends StatefulWidget {
  const ItemRounded1Widget({
    Key? key,
    this.label,
    this.borderColor,
    this.bgColor,
    this.labelColor,
  }) : super(key: key);

  final String? label;
  final Color? borderColor;
  final Color? bgColor;
  final Color? labelColor;

  @override
  _ItemRounded1WidgetState createState() => _ItemRounded1WidgetState();
}

class _ItemRounded1WidgetState extends State<ItemRounded1Widget> {
  late ItemRounded1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemRounded1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: widget.borderColor!,
          width: 1.5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: Text(
              widget.label!.maybeHandleOverflow(
                maxChars: 80,
                replacement: '…',
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                    color: widget.labelColor,
                    fontSize: 14.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText2Family),
                    lineHeight: 1.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
