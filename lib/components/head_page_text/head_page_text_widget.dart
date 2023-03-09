import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'head_page_text_model.dart';
export 'head_page_text_model.dart';

class HeadPageTextWidget extends StatefulWidget {
  const HeadPageTextWidget({
    Key? key,
    this.title,
    this.subTitle,
    this.colorTitle,
    this.colorSubTitle,
  }) : super(key: key);

  final String? title;
  final String? subTitle;
  final Color? colorTitle;
  final Color? colorSubTitle;

  @override
  _HeadPageTextWidgetState createState() => _HeadPageTextWidgetState();
}

class _HeadPageTextWidgetState extends State<HeadPageTextWidget> {
  late HeadPageTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadPageTextModel());

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
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
            child: Text(
              widget.title!,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).subtitle1.override(
                    fontFamily: FlutterFlowTheme.of(context).subtitle1Family,
                    color: valueOrDefault<Color>(
                      widget.colorTitle,
                      FlutterFlowTheme.of(context).neutrals8,
                    ),
                    fontSize: 24.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).subtitle1Family),
                    lineHeight: 1.4,
                  ),
            ),
          ),
          Text(
            widget.subTitle!.maybeHandleOverflow(
              maxChars: 80,
              replacement: '…',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyText2.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                  color: valueOrDefault<Color>(
                    widget.colorSubTitle,
                    FlutterFlowTheme.of(context).neutrals4,
                  ),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText2Family),
                  lineHeight: 1.7,
                ),
          ),
          if (FFAppState().errorOtp != null && FFAppState().errorOtp != '')
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                FFAppState().errorOtp,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                      color: FlutterFlowTheme.of(context).error,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyText1Family),
                    ),
              ),
            ),
          if (FFAppState().LoadingVerifyOTP == true)
            Lottie.asset(
              'assets/lottie_animations/334-loader-5-edited_(1).json',
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
              animate: true,
            ),
        ],
      ),
    );
  }
}
