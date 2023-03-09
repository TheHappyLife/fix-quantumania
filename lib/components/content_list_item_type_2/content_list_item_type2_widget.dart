import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'content_list_item_type2_model.dart';
export 'content_list_item_type2_model.dart';

class ContentListItemType2Widget extends StatefulWidget {
  const ContentListItemType2Widget({
    Key? key,
    this.title,
    this.text2,
    this.text3,
    this.text4,
    this.colorText2,
    this.colorText3,
    this.colorText4,
    this.colorTtile,
  }) : super(key: key);

  final String? title;
  final String? text2;
  final String? text3;
  final String? text4;
  final Color? colorText2;
  final Color? colorText3;
  final Color? colorText4;
  final Color? colorTtile;

  @override
  _ContentListItemType2WidgetState createState() =>
      _ContentListItemType2WidgetState();
}

class _ContentListItemType2WidgetState
    extends State<ContentListItemType2Widget> {
  late ContentListItemType2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentListItemType2Model());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                child: Text(
                  widget.title!.maybeHandleOverflow(
                    maxChars: 20,
                    replacement: '…',
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: widget.colorTtile,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                        lineHeight: 1.6,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                child: Text(
                  widget.text2!,
                  textAlign: TextAlign.end,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: widget.colorText2,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                        lineHeight: 1.7,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                child: Text(
                  widget.text3!,
                  textAlign: TextAlign.end,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: widget.colorText3,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                        lineHeight: 1.7,
                      ),
                ),
              ),
              Text(
                widget.text4!,
                textAlign: TextAlign.end,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                      color: widget.colorText4,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyText1Family),
                      lineHeight: 1.7,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
