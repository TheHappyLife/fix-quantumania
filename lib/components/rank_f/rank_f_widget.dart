import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rank_f_model.dart';
export 'rank_f_model.dart';

class RankFWidget extends StatefulWidget {
  const RankFWidget({
    Key? key,
    this.label,
    this.labelColor,
    this.boderColor,
    this.bgColor,
  }) : super(key: key);

  final String? label;
  final Color? labelColor;
  final Color? boderColor;
  final Color? bgColor;

  @override
  _RankFWidgetState createState() => _RankFWidgetState();
}

class _RankFWidgetState extends State<RankFWidget> {
  late RankFModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RankFModel());

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
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: widget.boderColor!,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(18.0, 8.0, 18.0, 8.0),
        child: Text(
          widget.label!,
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                color: widget.labelColor,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyText2Family),
              ),
        ),
      ),
    );
  }
}
