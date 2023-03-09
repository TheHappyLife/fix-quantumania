import '/components/headline_section_title/headline_section_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'headline_section_view_all_model.dart';
export 'headline_section_view_all_model.dart';

class HeadlineSectionViewAllWidget extends StatefulWidget {
  const HeadlineSectionViewAllWidget({
    Key? key,
    this.title,
    this.subTitle,
    this.textView,
    this.action,
  }) : super(key: key);

  final String? title;
  final String? subTitle;
  final String? textView;
  final Future<dynamic> Function()? action;

  @override
  _HeadlineSectionViewAllWidgetState createState() =>
      _HeadlineSectionViewAllWidgetState();
}

class _HeadlineSectionViewAllWidgetState
    extends State<HeadlineSectionViewAllWidget> {
  late HeadlineSectionViewAllModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadlineSectionViewAllModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.headlineSectionTitleModel,
                    updateCallback: () => setState(() {}),
                    child: HeadlineSectionTitleWidget(
                      title: widget.title,
                      subTitle: widget.subTitle,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        await widget.action?.call();
                      },
                      child: Text(
                        widget.textView!.maybeHandleOverflow(
                          maxChars: 80,
                          replacement: '…',
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: FlutterFlowTheme.of(context).neutrals6,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                              lineHeight: 1.6,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
