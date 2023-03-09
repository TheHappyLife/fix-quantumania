import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'round_status_model.dart';
export 'round_status_model.dart';

class RoundStatusWidget extends StatefulWidget {
  const RoundStatusWidget({
    Key? key,
    this.label,
  }) : super(key: key);

  final String? label;

  @override
  _RoundStatusWidgetState createState() => _RoundStatusWidgetState();
}

class _RoundStatusWidgetState extends State<RoundStatusWidget> {
  late RoundStatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoundStatusModel());

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
        color: Color(0x1E00FFFF),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
        child: Text(
          widget.label!.maybeHandleOverflow(
            maxChars: 20,
            replacement: '…',
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                color: FlutterFlowTheme.of(context).primary1,
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                lineHeight: 1.6,
              ),
        ),
      ),
    );
  }
}
