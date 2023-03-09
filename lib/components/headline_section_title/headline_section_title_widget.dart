import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'headline_section_title_model.dart';
export 'headline_section_title_model.dart';

class HeadlineSectionTitleWidget extends StatefulWidget {
  const HeadlineSectionTitleWidget({
    Key? key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  final String? title;
  final String? subTitle;

  @override
  _HeadlineSectionTitleWidgetState createState() =>
      _HeadlineSectionTitleWidgetState();
}

class _HeadlineSectionTitleWidgetState
    extends State<HeadlineSectionTitleWidget> {
  late HeadlineSectionTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadlineSectionTitleModel());

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
      constraints: BoxConstraints(
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectionArea(
              child: GradientText(
            widget.title!,
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                  color: FlutterFlowTheme.of(context).primary1,
                  fontSize: 24.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText1Family),
                  lineHeight: 1.4,
                ),
            colors: [Color(0xFF2378B7), Color(0xFF04D2C6)],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          )),
          if (widget.subTitle != null && widget.subTitle != '')
            Text(
              widget.subTitle!,
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                    color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText2Family),
                    lineHeight: 1.7,
                  ),
            ),
        ],
      ),
    );
  }
}
