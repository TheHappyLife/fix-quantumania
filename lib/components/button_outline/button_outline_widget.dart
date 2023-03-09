import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_outline_model.dart';
export 'button_outline_model.dart';

class ButtonOutlineWidget extends StatefulWidget {
  const ButtonOutlineWidget({
    Key? key,
    this.label,
  }) : super(key: key);

  final String? label;

  @override
  _ButtonOutlineWidgetState createState() => _ButtonOutlineWidgetState();
}

class _ButtonOutlineWidgetState extends State<ButtonOutlineWidget> {
  late ButtonOutlineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonOutlineModel());

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
        color: Color(0x00FFFFFF),
      ),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: widget.label!,
        options: FFButtonOptions(
          width: double.infinity,
          height: 48.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Color(0x00FFFFFF),
          textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                color: FlutterFlowTheme.of(context).neutrals8,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                lineHeight: 1.0,
              ),
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).border1,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(99.0),
        ),
      ),
    );
  }
}
