import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'aff_navigation2_model.dart';
export 'aff_navigation2_model.dart';

class AffNavigation2Widget extends StatefulWidget {
  const AffNavigation2Widget({
    Key? key,
    this.current,
  }) : super(key: key);

  final String? current;

  @override
  _AffNavigation2WidgetState createState() => _AffNavigation2WidgetState();
}

class _AffNavigation2WidgetState extends State<AffNavigation2Widget> {
  late AffNavigation2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AffNavigation2Model());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GradientText(
                      functions.capitalizeFirstLetter(widget.current!),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).title1Family,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).title1Family),
                            lineHeight: 1.6,
                          ),
                      colors: [Color(0xFF2378B7), Color(0xFF04D2C6)],
                      gradientDirection: GradientDirection.ltr,
                      gradientType: GradientType.linear,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 3.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF2378B7),
                            Color(0xFF04D2C6),
                            Color(0x34009D9D)
                          ],
                          stops: [0.0, 1.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: StreamBuilder<List<AffTabRecord>>(
                stream: queryAffTabRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitFadingCircle(
                          color: FlutterFlowTheme.of(context).primary1,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<AffTabRecord> rowAffTabRecordList = snapshot.data!;
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:
                        List.generate(rowAffTabRecordList.length, (rowIndex) {
                      final rowAffTabRecord = rowAffTabRecordList[rowIndex];
                      return Visibility(
                        visible: rowAffTabRecord.item.slug != widget.current,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            onTap: () async {
                              if (rowAffTabRecord.item.slug ==
                                  FFAppState().currentAffOverview) {
                                context.pushNamed(
                                  'Affiliate-Overview',
                                  queryParams: {
                                    'current': serializeParam(
                                      FFAppState().currentAffOverview,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );

                                return;
                              } else {
                                if (rowAffTabRecord.item.slug ==
                                    FFAppState().currentSubAff) {
                                  context.pushNamed(
                                    'Affiliate-Sub_aff',
                                    queryParams: {
                                      'current': serializeParam(
                                        FFAppState().currentSubAff,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else {
                                  context.pushNamed(
                                    'Affiliate-detail',
                                    queryParams: {
                                      'current': serializeParam(
                                        FFAppState().currentDetail,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                      ),
                                    },
                                  );
                                }

                                return;
                              }
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  rowAffTabRecord.item.name!,
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .subtitle2Family,
                                        color: rowAffTabRecord.item.slug ==
                                                widget.current
                                            ? FlutterFlowTheme.of(context)
                                                .primary1
                                            : FlutterFlowTheme.of(context)
                                                .neutrals4,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2Family),
                                        lineHeight: 1.6,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
