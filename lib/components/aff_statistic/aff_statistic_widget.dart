import '/backend/api_requests/api_calls.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/item_data_1/item_data1_widget.dart';
import '/components/item_data_2/item_data2_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aff_statistic_model.dart';
export 'aff_statistic_model.dart';

class AffStatisticWidget extends StatefulWidget {
  const AffStatisticWidget({
    Key? key,
    this.subTitle,
  }) : super(key: key);

  final String? subTitle;

  @override
  _AffStatisticWidgetState createState() => _AffStatisticWidgetState();
}

class _AffStatisticWidgetState extends State<AffStatisticWidget> {
  late AffStatisticModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AffStatisticModel());

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
      height: 700.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Statistics',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                          color:
                              FlutterFlowTheme.of(context).aliasGrayscaleBody,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title1Family),
                          lineHeight: 1.5,
                        ),
                  ),
                  FlutterFlowDropDown<String>(
                    options: ['Option 1'],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: 180.0,
                    height: 50.0,
                    textStyleInactive:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Colors.black,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                    hintText: 'Please select...',
                    fillColor: Colors.white,
                    elevation: 2.0,
                    borderColor: Colors.transparent,
                    borderWidth: 0.0,
                    borderRadius: 0.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    hidesUnderline: true,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Total ',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FlutterFlowTheme.of(context)
                                .aliasGrayscaleLabel,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                            lineHeight: 1.5,
                          ),
                    ),
                    Text(
                      getJsonField(
                        FFAppState().totalSale,
                        r'''$.data.total_full_order''',
                      ).toString(),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FlutterFlowTheme.of(context)
                                .aliasGrayscaleLabel,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                            lineHeight: 1.5,
                          ),
                    ),
                    Text(
                      ' sales',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FlutterFlowTheme.of(context)
                                .aliasGrayscaleLabel,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                            lineHeight: 1.5,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 400.0,
                        child: custom_widgets.ColumnSeriesType1(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 400.0,
                          label1: 'F1',
                          label2: 'F2',
                          label3: 'F3',
                          label4: 'F4',
                          label5: 'F5',
                          label6: 'F6',
                          label7: 'F7',
                          value1: 5666.0,
                          value2: 1236.0,
                          value3: 9595.0,
                          value4: 6494.0,
                          value5: 4144.0,
                          value6: 1414.0,
                          value7: 1415.0,
                          color: FlutterFlowTheme.of(context).primary1,
                          colorContainer: FlutterFlowTheme.of(context)
                              .aliasGrayscaleBackgroundWeak,
                          total: getJsonField(
                            FFAppState().totalSale,
                            r'''$.data.total_full_order''',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: FutureBuilder<ApiCallResponse>(
                                future: AffGroup.getStatisticCall.call(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitFadingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primary1,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final wrapGetStatisticResponse =
                                      snapshot.data!;
                                  return Wrap(
                                    spacing: 0.0,
                                    runSpacing: 16.0,
                                    alignment: WrapAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: wrapWithModel(
                                          model: _model.itemDataModel,
                                          updateCallback: () => setState(() {}),
                                          child: ItemDataWidget(
                                            bg: Color(0x33FDC537),
                                            title: getJsonField(
                                              FFAppState().totalSale,
                                              r'''$.data.total_full_order''',
                                            ).toString(),
                                            subTitle: 'Total sales',
                                            icon: Icon(
                                              Icons.show_chart,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary1,
                                              size: 24.0,
                                            ),
                                            prefix: 'k',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: wrapWithModel(
                                          model: _model.itemData1Model,
                                          updateCallback: () => setState(() {}),
                                          child: ItemData1Widget(
                                            title: getJsonField(
                                              FFAppState().totalCommission,
                                              r'''$.data.total_commission''',
                                            ).toString(),
                                            subTitle: 'Commission',
                                            image:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/sz6rrs3m4klx/Dollar_icon.png',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        decoration: BoxDecoration(),
                                        child: wrapWithModel(
                                          model: _model.itemData2Model,
                                          updateCallback: () => setState(() {}),
                                          child: ItemData2Widget(
                                            title: getJsonField(
                                              FFAppState().newsubafff,
                                              r'''$.data.new_sub_aff''',
                                            ).toString(),
                                            subTitle: 'New sub-aff',
                                            image:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/lcrjed0ypfuz/icon-data-2.png',
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
