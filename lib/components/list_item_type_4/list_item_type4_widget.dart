import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_item_type4_model.dart';
export 'list_item_type4_model.dart';

class ListItemType4Widget extends StatefulWidget {
  const ListItemType4Widget({
    Key? key,
    this.title,
    this.bgColor,
  }) : super(key: key);

  final String? title;
  final Color? bgColor;

  @override
  _ListItemType4WidgetState createState() => _ListItemType4WidgetState();
}

class _ListItemType4WidgetState extends State<ListItemType4Widget> {
  late ListItemType4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListItemType4Model());

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            decoration: BoxDecoration(
              color: Color(0x00FFFFFF),
              border: Border.all(
                color: Color(0x00FFFFFF),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          decoration: BoxDecoration(
                            color: widget.bgColor,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                      Text(
                        widget.title!,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: FlutterFlowTheme.of(context).neutrals7,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                              lineHeight: 1.6,
                            ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: FlutterFlowTheme.of(context).neutrals8,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 1.0,
            color: Color(0x1EFFFFFF),
          ),
        ],
      ),
    );
  }
}
