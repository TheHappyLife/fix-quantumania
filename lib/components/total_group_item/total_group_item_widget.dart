import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'total_group_item_model.dart';
export 'total_group_item_model.dart';

class TotalGroupItemWidget extends StatefulWidget {
  const TotalGroupItemWidget({
    Key? key,
    this.title,
    this.subTitle,
    this.colorTitle,
    this.colorSubTitle,
    String? subfix,
  })  : this.subfix = subfix ?? ' ',
        super(key: key);

  final String? title;
  final String? subTitle;
  final Color? colorTitle;
  final Color? colorSubTitle;
  final String subfix;

  @override
  _TotalGroupItemWidgetState createState() => _TotalGroupItemWidgetState();
}

class _TotalGroupItemWidgetState extends State<TotalGroupItemWidget> {
  late TotalGroupItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TotalGroupItemModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title!,
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                    color: widget.colorTitle,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText1Family),
                    lineHeight: 1.7,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  widget.subfix,
                  textAlign: TextAlign.end,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: widget.colorSubTitle,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                        lineHeight: 1.7,
                      ),
                ),
                Text(
                  widget.subTitle!,
                  textAlign: TextAlign.end,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: widget.colorSubTitle,
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
      ),
    );
  }
}
