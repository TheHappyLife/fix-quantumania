import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_info_statistics_text_model.dart';
export 'card_info_statistics_text_model.dart';

class CardInfoStatisticsTextWidget extends StatefulWidget {
  const CardInfoStatisticsTextWidget({
    Key? key,
    this.title,
    this.meta,
  }) : super(key: key);

  final String? title;
  final String? meta;

  @override
  _CardInfoStatisticsTextWidgetState createState() =>
      _CardInfoStatisticsTextWidgetState();
}

class _CardInfoStatisticsTextWidgetState
    extends State<CardInfoStatisticsTextWidget> {
  late CardInfoStatisticsTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardInfoStatisticsTextModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
            child: Text(
              widget.title!,
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                    color:
                        FlutterFlowTheme.of(context).aliasGrayscalePlaceholder,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText2Family),
                    lineHeight: 1.6,
                  ),
            ),
          ),
          Text(
            widget.meta!,
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).subtitle1.override(
                  fontFamily: FlutterFlowTheme.of(context).subtitle1Family,
                  color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).subtitle1Family),
                  lineHeight: 1.6,
                ),
          ),
        ],
      ),
    );
  }
}
