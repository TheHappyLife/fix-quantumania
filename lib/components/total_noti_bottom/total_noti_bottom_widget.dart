import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'total_noti_bottom_model.dart';
export 'total_noti_bottom_model.dart';

class TotalNotiBottomWidget extends StatefulWidget {
  const TotalNotiBottomWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  _TotalNotiBottomWidgetState createState() => _TotalNotiBottomWidgetState();
}

class _TotalNotiBottomWidgetState extends State<TotalNotiBottomWidget> {
  late TotalNotiBottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TotalNotiBottomModel());

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
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: Icon(
              Icons.info_outlined,
              color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
              size: 16.0,
            ),
          ),
          Text(
            widget.text!,
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).bodyText2.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                  color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText2Family),
                  lineHeight: 1.5,
                ),
          ),
        ],
      ),
    );
  }
}
