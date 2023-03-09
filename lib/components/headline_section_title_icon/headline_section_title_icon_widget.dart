import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'headline_section_title_icon_model.dart';
export 'headline_section_title_icon_model.dart';

class HeadlineSectionTitleIconWidget extends StatefulWidget {
  const HeadlineSectionTitleIconWidget({
    Key? key,
    this.title,
    this.subTitle,
    this.icon,
  }) : super(key: key);

  final String? title;
  final String? subTitle;
  final String? icon;

  @override
  _HeadlineSectionTitleIconWidgetState createState() =>
      _HeadlineSectionTitleIconWidgetState();
}

class _HeadlineSectionTitleIconWidgetState
    extends State<HeadlineSectionTitleIconWidget> {
  late HeadlineSectionTitleIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadlineSectionTitleIconModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
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
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.subTitle != '')
                Text(
                  widget.subTitle!,
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText2Family,
                        color: FlutterFlowTheme.of(context).neutrals4,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText2Family),
                        lineHeight: 1.7,
                      ),
                ),
              if (widget.icon == '')
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Image.network(
                    widget.icon!,
                    width: 12.0,
                    height: 12.0,
                    fit: BoxFit.cover,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
