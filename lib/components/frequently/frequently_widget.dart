import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'frequently_model.dart';
export 'frequently_model.dart';

class FrequentlyWidget extends StatefulWidget {
  const FrequentlyWidget({Key? key}) : super(key: key);

  @override
  _FrequentlyWidgetState createState() => _FrequentlyWidgetState();
}

class _FrequentlyWidgetState extends State<FrequentlyWidget> {
  late FrequentlyModel _model;
  late ExpandableController categoryController;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrequentlyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();
    // categoryController = ExpandableController(initialExpanded: false);

    super.dispose();
  }

  int _selectedIndex = -1;
  bool collapseAll = false;

  void _onTileTapped(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex = -1;
      } else {
        _selectedIndex = index;
        collapseAll = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    print(_selectedIndex);

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'FAQ',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily:
                                      FlutterFlowTheme.of(context).title3Family,
                                  color: Color(0xFF262338),
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .title3Family),
                                ),
                          ),
                        ),
                        Text(
                          'to see the most frequently asked questions',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color: Color(0xFF4E4B66),
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Lottie.asset(
                          'assets/lottie_animations/support.json',
                          width: 150.0,
                          height: 130.0,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      decoration: BoxDecoration(),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Builder(builder: (context) {
                          final faq = getJsonField(
                            FFAppState().faq,
                            r'''$.data''',
                          ).toList();
                          return ExpansionPanelList(
                            elevation: 0,
                            expansionCallback: (int index, bool isExpanded) {
                              _onTileTapped(index);
                            },
                            children: List.generate(faq.length, (faqIndex) {
                              final faqItem = faq[faqIndex];

                              return ExpansionPanel(
                                canTapOnHeader: true,
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) {
                                  return ListTile(
                                    minLeadingWidth: 500,
                                    title: Text(
                                      getJsonField(
                                        faqItem,
                                        r'''$.title''',
                                      ).toString(),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .aliasGrayscaleBody,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2Family),
                                            lineHeight: 1.6,
                                          ),
                                    ),
                                  );
                                },
                                body: ListTile(
                                  title: Text(
                                    getJsonField(
                                      faqItem,
                                      r'''$.body''',
                                    ).toString(),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2Family,
                                          color: FlutterFlowTheme.of(context)
                                              .aliasGrayscaleBody,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family),
                                          lineHeight: 1.6,
                                        ),
                                  ),
                                ),
                                isExpanded: collapseAll == true &&
                                        _selectedIndex == faqIndex
                                    ? false
                                    : _selectedIndex == faqIndex,
                              );
                            }).toList(),
                          );
                        }),
                      )
                      // children: List.generate(faq.length, (faqIndex) {
                      //   final faqItem = faq[faqIndex];
                      // return ExpansionTile(
                      //   title: Text(
                      //     getJsonField(
                      //       faqItem,
                      //       r'''$.title''',
                      //     ).toString(),
                      //     textAlign: TextAlign.start,
                      //     style: FlutterFlowTheme.of(context)
                      //         .subtitle2
                      //         .override(
                      //           fontFamily: FlutterFlowTheme.of(context)
                      //               .subtitle2Family,
                      //           color: FlutterFlowTheme.of(context)
                      //               .aliasGrayscaleBody,
                      //           useGoogleFonts: GoogleFonts.asMap()
                      //               .containsKey(
                      //                   FlutterFlowTheme.of(context)
                      //                       .subtitle2Family),
                      //           lineHeight: 1.6,
                      //         ),
                      //   ),
                      //   // subtitle: Text('Trailing expansion arrow icon'),
                      //   children: <Widget>[
                      //     ListTile(
                      //       title: Text(
                      //         getJsonField(
                      //           faqItem,
                      //           r'''$.body''',
                      //         ).toString(),
                      //         textAlign: TextAlign.start,
                      //         style: FlutterFlowTheme.of(context)
                      //             .subtitle2
                      //             .override(
                      //               fontFamily:
                      //                   FlutterFlowTheme.of(context)
                      //                       .subtitle2Family,
                      //               color: FlutterFlowTheme.of(context)
                      //                   .aliasGrayscaleBody,
                      //               fontWeight: FontWeight.normal,
                      //               useGoogleFonts: GoogleFonts.asMap()
                      //                   .containsKey(
                      //                       FlutterFlowTheme.of(context)
                      //                           .subtitle2Family),
                      //               lineHeight: 1.6,
                      //             ),
                      //       ),
                      //     ),
                      //   ],
                      //   onExpansionChanged: (isExpanded) {
                      //     setState(() {
                      //       _isExpandedList[faqIndex] = isExpanded;
                      //       // Close other expansion tiles if this one is opened
                      //       if (isExpanded) {
                      //         _isExpandedList
                      //             .asMap()
                      //             .forEach((i, value) {
                      //           if (i != faqIndex)
                      //             _isExpandedList[i] = false;
                      //         });
                      //       }
                      //     });
                      //   },
                      //   initiallyExpanded: _isExpandedList[faqIndex],
                      // );
                      // return Container(
                      //   width: MediaQuery.of(context).size.width * 1.0,
                      //   color: Colors.white,
                      //   child: ExpandableNotifier(
                      //     initialExpanded: false,
                      //     child: ScrollOnExpand(
                      //       scrollOnExpand: true,
                      //       scrollOnCollapse: true,
                      //       child: ExpandablePanel(
                      //         // controller: categoryController,
                      //         header: Text(
                      //           getJsonField(
                      //             faqItem,
                      //             r'''$.title''',
                      //           ).toString(),
                      //           textAlign: TextAlign.start,
                      //           style: FlutterFlowTheme.of(context)
                      //               .subtitle2
                      //               .override(
                      //                 fontFamily:
                      //                     FlutterFlowTheme.of(context)
                      //                         .subtitle2Family,
                      //                 color:
                      //                     FlutterFlowTheme.of(context)
                      //                         .aliasGrayscaleBody,
                      //                 useGoogleFonts:
                      //                     GoogleFonts.asMap()
                      //                         .containsKey(
                      //                             FlutterFlowTheme.of(
                      //                                     context)
                      //                                 .subtitle2Family),
                      //                 lineHeight: 1.6,
                      //               ),
                      //         ),
                      //         collapsed: Container(),
                      //         expanded: Column(
                      //           mainAxisSize: MainAxisSize.max,
                      //           children: [
                      //             Text(
                      //               getJsonField(
                      //                 faqItem,
                      //                 r'''$.body''',
                      //               ).toString(),
                      //               textAlign: TextAlign.start,
                      //               style: FlutterFlowTheme.of(context)
                      //                   .subtitle2
                      //                   .override(
                      //                     fontFamily:
                      //                         FlutterFlowTheme.of(
                      //                                 context)
                      //                             .subtitle2Family,
                      //                     color: FlutterFlowTheme.of(
                      //                             context)
                      //                         .aliasGrayscaleBody,
                      //                     fontWeight: FontWeight.normal,
                      //                     useGoogleFonts: GoogleFonts
                      //                             .asMap()
                      //                         .containsKey(
                      //                             FlutterFlowTheme.of(
                      //                                     context)
                      //                                 .subtitle2Family),
                      //                     lineHeight: 1.6,
                      //                   ),
                      //             ),
                      //           ],
                      //         ),
                      //         theme: ExpandableThemeData(
                      //           tapHeaderToExpand: true,
                      //           tapBodyToExpand: false,
                      //           tapBodyToCollapse: false,
                      //           headerAlignment:
                      //               ExpandablePanelHeaderAlignment
                      //                   .center,
                      //           hasIcon: true,
                      //           expandIcon: Icons.arrow_drop_up,
                      //           collapseIcon: Icons.arrow_drop_down,
                      //           iconSize: 22.0,
                      //           iconColor: FlutterFlowTheme.of(context)
                      //               .primary1,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      ),
                ),
                if (functions.disableLoadmore(
                        getJsonField(
                          FFAppState().faq,
                          r'''$.data''',
                        ),
                        getJsonField(
                          FFAppState().faq,
                          r'''$.results''',
                        )) ==
                    false)
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        _model.limit = _model.limit! + 2;
                        collapseAll = true;
                      });
                      _model.apiResultmkj = await AffGroup.faqCall.call(
                        page: _model.page,
                        limit: _model.limit,
                      );
                      if ((_model.apiResultmkj?.succeeded ?? true)) {
                        setState(() {
                          FFAppState().faq =
                              (_model.apiResultmkj?.jsonBody ?? '');
                        });
                      }

                      setState(() {});
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
                            color:
                                FlutterFlowTheme.of(context).aliasGrayscaleBody,
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
      ),
    );
  }
}
