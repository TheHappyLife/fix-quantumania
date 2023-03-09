import '/backend/api_requests/api_calls.dart';
import '/components/emty/emty_widget.dart';
import '/components/noti_item/noti_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'noti_page_model.dart';
export 'noti_page_model.dart';

class NotiPageWidget extends StatefulWidget {
  const NotiPageWidget({Key? key}) : super(key: key);

  @override
  _NotiPageWidgetState createState() => _NotiPageWidgetState();
}

class _NotiPageWidgetState extends State<NotiPageWidget> {
  late NotiPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotiPageModel());

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
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          _model.notiRefresh = await MyInvestmentGroup.aPINotificationCall.call(
            accessToken: FFAppState().accessToken,
          );
          _model.activitiesRefresh =
              await MyInvestmentGroup.getActivitiesCall.call(
            accessToken: FFAppState().accessToken,
          );
          await actions.updateAndFindDbLocal(
            null,
            null,
            null,
            (_model.activitiesRefresh?.jsonBody ?? ''),
            null,
            null,
            (_model.notiRefresh?.jsonBody ?? ''),
          );
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  setState(() {
                                    FFAppState().pageActivity = 'noti';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Notification',
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title1Family,
                                            color: FFAppState().pageActivity ==
                                                    'noti'
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryColor
                                                : FlutterFlowTheme.of(context)
                                                    .neutrals2,
                                            fontSize:
                                                FFAppState().pageActivity ==
                                                        'noti'
                                                    ? 24.0
                                                    : 16.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title1Family),
                                            lineHeight: 1.6,
                                          ),
                                    ),
                                    if (FFAppState().pageActivity == 'noti')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 0.0),
                                        child: Image.asset(
                                          'assets/images/indicator.png',
                                          width: 110.0,
                                          height: 3.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 2.0,
                              decoration: BoxDecoration(),
                            ),
                            InkWell(
                              onTap: () async {
                                setState(() {
                                  FFAppState().pageActivity = 'activities';
                                });
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Activities',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2Family,
                                          color: FFAppState().pageActivity ==
                                                  'activities'
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryColor
                                              : FlutterFlowTheme.of(context)
                                                  .neutrals2,
                                          fontSize: FFAppState().pageActivity ==
                                                  'activities'
                                              ? 24.0
                                              : 16.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family),
                                          lineHeight: 1.6,
                                        ),
                                  ),
                                  if (FFAppState().pageActivity == 'activities')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 0.0),
                                      child: Image.asset(
                                        'assets/images/indicator.png',
                                        width: 110.0,
                                        height: 3.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (FFAppState().pageActivity == 'noti')
                Builder(
                  builder: (context) {
                    final noti = getJsonField(
                      FFAppState().responseNoti,
                      r'''$.data.notification''',
                    ).toList();
                    if (noti.isEmpty) {
                      return EmtyWidget(
                        title: 'Your have not notification',
                      );
                    }
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(noti.length, (notiIndex) {
                        final notiItem = noti[notiIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: NotiItemWidget(
                            key: Key('Keytlm_${notiIndex}_of_${noti.length}'),
                            bgColor: FlutterFlowTheme.of(context)
                                .aliasGrayscaleBackgroundWeak,
                            image:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/1g7idoskp7wz/image-teamwork-2.png',
                            title: getJsonField(
                              notiItem,
                              r'''$.title''',
                            ).toString(),
                            subTitle: getJsonField(
                              notiItem,
                              r'''$.body''',
                            ).toString(),
                            time: getJsonField(
                              notiItem,
                              r'''$.createdAt''',
                            ).toString(),
                            readed: getJsonField(
                                  notiItem,
                                  r'''$.readed''',
                                ) ==
                                false,
                          ),
                        );
                      }),
                    );
                  },
                ),
              if (FFAppState().pageActivity == 'activities')
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final activity = getJsonField(
                        FFAppState().responseActivity,
                        r'''$.data''',
                      ).toList();
                      if (activity.isEmpty) {
                        return EmtyWidget(
                          title: 'You are not have activities',
                        );
                      }
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(activity.length, (activityIndex) {
                          final activityItem = activity[activityIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                      border: Border.all(
                                        color: Color(0x00FFFFFF),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  functions.titleActivity(
                                                      getJsonField(
                                                    activityItem,
                                                    r'''$.ref''',
                                                  ).toString()),
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2Family,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .aliasGrayscaleBody,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2Family),
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        functions.replaceComma(
                                                            getJsonField(
                                                          activityItem,
                                                          r'''$.amount''',
                                                        ).toString()),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color:
                                                                    getJsonField(
                                                                              activityItem,
                                                                              r'''$.type''',
                                                                            ) ==
                                                                            'add'
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .success
                                                                        : FlutterFlowTheme.of(context)
                                                                            .error,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        getJsonField(
                                                          activityItem,
                                                          r'''$.currency''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: getJsonField(
                                                                            activityItem,
                                                                            r'''$.type''',
                                                                          ) ==
                                                                          'add'
                                                                      ? FlutterFlowTheme.of(context).success
                                                                      : FlutterFlowTheme.of(context).error,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              getJsonField(
                                                activityItem,
                                                r'''$.description''',
                                              ).toString(),
                                              textAlign: TextAlign.start,
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .aliasGrayscalePlaceholder,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                        lineHeight: 1.5,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              functions
                                                  .dateTimeFormat(getJsonField(
                                                activityItem,
                                                r'''$.time''',
                                              ).toString()),
                                              textAlign: TextAlign.start,
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2Family,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .aliasGrayscaleLabel,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2Family),
                                                        lineHeight: 1.5,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleLine,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Divider(
                                    height: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleLine,
                                  ),
                                ],
                              ),
                            ],
                          );
                        }),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
