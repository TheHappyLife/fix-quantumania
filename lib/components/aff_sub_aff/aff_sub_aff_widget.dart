import '/backend/api_requests/api_calls.dart';
import '/components/content_list_item_type_2/content_list_item_type2_widget.dart';
import '/components/emty/emty_widget.dart';
import '/components/list_item_type_3/list_item_type3_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aff_sub_aff_model.dart';
export 'aff_sub_aff_model.dart';

class AffSubAffWidget extends StatefulWidget {
  const AffSubAffWidget({Key? key}) : super(key: key);

  @override
  _AffSubAffWidgetState createState() => _AffSubAffWidgetState();
}

class _AffSubAffWidgetState extends State<AffSubAffWidget> {
  late AffSubAffModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AffSubAffModel());

    _model.searchInputController ??= TextEditingController();
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
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                color:
                    FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: Image.network(
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/fonia9asblbo/user.png',
                  ).image,
                ),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Color(0x00FFFFFF),
                  width: 1.0,
                ),
              ),
              alignment: AlignmentDirectional(0.55, -0.5),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Text(
                                          'Number of people',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family,
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .aliasGrayscalePlaceholder,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText2Family),
                                                lineHeight: 1.6,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        '${getJsonField(
                                              FFAppState().responseSubAff,
                                              r'''$.total_affiliate''',
                                            ) != null ? getJsonField(
                                            FFAppState().responseSubAff,
                                            r'''$.total_affiliate''',
                                          ).toString() : '0'} people',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .aliasGrayscaleBody,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle1Family),
                                              lineHeight: 1.6,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                FlutterFlowDropDown<String>(
                                  initialOption: _model.dropDownValue ??= 'All',
                                  options: ['All'],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue = val),
                                  width: 180.0,
                                  height: 50.0,
                                  textStyleInactive:
                                      FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family,
                                            color: Colors.black,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                          ),
                                  hintText: 'Please select...',
                                  fillColor: Colors.white,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 0.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: TextFormField(
                        controller: _model.searchInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.searchInputController',
                          Duration(milliseconds: 200),
                          () async {
                            setState(() {
                              _model.notLoadingSearch = false;
                            });
                            _model.searchResponse =
                                await AffGroup.getSubAffCall.call(
                              accessToken: FFAppState().accessToken,
                              searchTerm: _model.searchInputController.text,
                            );
                            if ((_model.searchResponse?.succeeded ?? true)) {
                              setState(() {
                                FFAppState().dataSearchAff =
                                    (_model.searchResponse?.jsonBody ?? '');
                              });
                            }
                            setState(() {
                              _model.notLoadingSearch = true;
                            });

                            setState(() {});
                          },
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Search by ID / Name',
                          hintStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                color: FlutterFlowTheme.of(context)
                                    .aliasGrayscalePlaceholder,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).aliasGrayscaleInput,
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: FlutterFlowTheme.of(context).neutrals4,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: FlutterFlowTheme.of(context)
                                  .aliasGrayscalePlaceholder,
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                              lineHeight: 1.0,
                            ),
                        maxLines: null,
                        validator: _model.searchInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if ((_model.searchInputController.text == null ||
                          _model.searchInputController.text == '') &&
                      (_model.notLoadingSearch == true))
                    Builder(
                      builder: (context) {
                        final level = getJsonField(
                          FFAppState().responseSubAff,
                          r'''$.data''',
                        ).toList();
                        if (level.isEmpty) {
                          return Container(
                            width: double.infinity,
                            child: EmtyWidget(
                              title: 'Your haven\'t sub affiliate',
                            ),
                          );
                        }
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(level.length, (levelIndex) {
                            final levelItem = level[levelIndex];
                            return ListItemType3Widget(
                              key: Key(
                                  'Keyar1_${levelIndex}_of_${level.length}'),
                              title: getJsonField(
                                levelItem,
                                r'''$.level''',
                              ).toString(),
                              meta: '${functions.lengthLevelPeople(getJsonField(
                                    levelItem,
                                    r'''$.properties''',
                                  )).toString()} people',
                              level: '',
                            );
                          }),
                        );
                      },
                    ),
                  if ((_model.searchInputController.text != null &&
                          _model.searchInputController.text != '') &&
                      (_model.notLoadingSearch == true))
                    Builder(
                      builder: (context) {
                        final search = getJsonField(
                          FFAppState().dataSearchAff,
                          r'''$.data''',
                        ).toList();
                        if (search.isEmpty) {
                          return Container(
                            width: double.infinity,
                            child: EmtyWidget(
                              title: 'Your haven\'t sub affiliate',
                            ),
                          );
                        }
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(search.length, (searchIndex) {
                            final searchItem = search[searchIndex];
                            return ListItemType3Widget(
                              key: Key(
                                  'Keyws5_${searchIndex}_of_${search.length}'),
                              title: getJsonField(
                                searchItem,
                                r'''$.name''',
                              ).toString(),
                              meta: '${getJsonField(
                                searchItem,
                                r'''$.sale''',
                              ).toString()}\$ sales',
                              level: getJsonField(
                                searchItem,
                                r'''$.level''',
                              ).toString(),
                            );
                          }),
                        );
                      },
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Load more',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).aliasGrayscaleLine,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText2
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText2Family,
                              color: FlutterFlowTheme.of(context)
                                  .aliasGrayscaleBody,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText2Family),
                              lineHeight: 1.0,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0.0,
                        ),
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                    ),
                  if (_model.notLoadingSearch == false)
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.waitingModel,
                          updateCallback: () => setState(() {}),
                          child: WaitingWidget(),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
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
                                    borderRadius: BorderRadius.circular(0.0),
                                    border: Border.all(
                                      color: Color(0x00FFFFFF),
                                      width: 0.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00FFFFFF),
                                                      border: Border.all(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .contentListItemType2Model,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      ContentListItemType2Widget(
                                                                    title:
                                                                        'Ha Tran',
                                                                    text2: 'F2',
                                                                    text3:
                                                                        'Join date: 25/09/2022 ',
                                                                    text4: '',
                                                                    colorText2:
                                                                        FlutterFlowTheme.of(context)
                                                                            .aliasGrayscaleBody,
                                                                    colorText3:
                                                                        FlutterFlowTheme.of(context)
                                                                            .aliasGrayscaleLabel,
                                                                    colorText4:
                                                                        Color(
                                                                            0x00000000),
                                                                    colorTtile:
                                                                        FlutterFlowTheme.of(context)
                                                                            .aliasGrayscaleBody,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .border1,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Load more',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).aliasGrayscaleLine,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText2
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText2Family,
                              color: FlutterFlowTheme.of(context)
                                  .aliasGrayscaleBody,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText2Family),
                              lineHeight: 1.0,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0.0,
                        ),
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
