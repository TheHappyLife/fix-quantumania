import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'history_no_result_model.dart';
export 'history_no_result_model.dart';

class HistoryNoResultWidget extends StatefulWidget {
  const HistoryNoResultWidget({Key? key}) : super(key: key);

  @override
  _HistoryNoResultWidgetState createState() => _HistoryNoResultWidgetState();
}

class _HistoryNoResultWidgetState extends State<HistoryNoResultWidget> {
  late HistoryNoResultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoryNoResultModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1.0,
          decoration: BoxDecoration(
            color: Color(0x00FFFFFF),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Text(
                    'No Results',
                    style: TextStyle(
                      fontFamily: 'Josefin Sans',
                      color: FlutterFlowTheme.of(context).neutrals8,
                      fontWeight: FontWeight.w600,
                      fontSize: 32.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 16.0, 0.0),
                  child: Text(
                    'We couldn’t find any result matching the filter.\nTry using another keyword or filter.',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).neutrals4,
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                          lineHeight: 1.6,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
