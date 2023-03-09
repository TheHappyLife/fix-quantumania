import '/components/badge_brand_small/badge_brand_small_widget.dart';
import '/components/gem_item_horizontal/gem_item_horizontal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_item_type7_model.dart';
export 'list_item_type7_model.dart';

class ListItemType7Widget extends StatefulWidget {
  const ListItemType7Widget({
    Key? key,
    this.title,
    this.badgeImage,
    this.badgeLabel,
  }) : super(key: key);

  final String? title;
  final String? badgeImage;
  final String? badgeLabel;

  @override
  _ListItemType7WidgetState createState() => _ListItemType7WidgetState();
}

class _ListItemType7WidgetState extends State<ListItemType7Widget> {
  late ListItemType7Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListItemType7Model());

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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title!.maybeHandleOverflow(
                            maxChars: 20,
                            replacement: '…',
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color: FlutterFlowTheme.of(context).neutrals8,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                                lineHeight: 1.6,
                              ),
                        ),
                        wrapWithModel(
                          model: _model.badgeBrandSmallModel,
                          updateCallback: () => setState(() {}),
                          child: BadgeBrandSmallWidget(
                            image: widget.badgeImage,
                            label: widget.badgeLabel,
                            colorLabel: FlutterFlowTheme.of(context).neutrals8,
                            sizeImage: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.gemItemHorizontalModel,
                        updateCallback: () => setState(() {}),
                        child: GemItemHorizontalWidget(),
                      ),
                    ],
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
