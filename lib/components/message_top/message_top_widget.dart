import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'message_top_model.dart';
export 'message_top_model.dart';

class MessageTopWidget extends StatefulWidget {
  const MessageTopWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  _MessageTopWidgetState createState() => _MessageTopWidgetState();
}

class _MessageTopWidgetState extends State<MessageTopWidget> {
  late MessageTopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageTopModel());

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
        color: Color(0xFFF1ED86),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                widget.text!,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                      color: FlutterFlowTheme.of(context).neutrals2,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyText2Family),
                      lineHeight: 1.6,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
