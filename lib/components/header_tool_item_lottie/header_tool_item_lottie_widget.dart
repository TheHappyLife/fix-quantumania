import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'header_tool_item_lottie_model.dart';
export 'header_tool_item_lottie_model.dart';

class HeaderToolItemLottieWidget extends StatefulWidget {
  const HeaderToolItemLottieWidget({
    Key? key,
    this.label,
  }) : super(key: key);

  final String? label;

  @override
  _HeaderToolItemLottieWidgetState createState() =>
      _HeaderToolItemLottieWidgetState();
}

class _HeaderToolItemLottieWidgetState
    extends State<HeaderToolItemLottieWidget> {
  late HeaderToolItemLottieModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderToolItemLottieModel());

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
        color: Color(0x00FFFFFF),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/lottie_animations/259-share-arrow-outline-edited.json',
            width: 24.0,
            height: 24.0,
            fit: BoxFit.contain,
            repeat: false,
            animate: true,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Text(
              widget.label!,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                    color: FlutterFlowTheme.of(context).neutrals8,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText1Family),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
