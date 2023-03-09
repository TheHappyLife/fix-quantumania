import '/backend/api_requests/api_calls.dart';
import '/components/emty/emty_widget.dart';
import '/components/frequently/frequently_widget.dart';
import '/components/headline_section_group_title/headline_section_group_title_widget.dart';
import '/components/investment_pack_item_4/investment_pack_item4_widget.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/item_data_2/item_data2_widget.dart';
import '/components/modal_buy_invest/modal_buy_invest_widget.dart';
import '/components/modal_my_investment_withdraw/modal_my_investment_withdraw_widget.dart';
import '/components/rounded_day_expired/rounded_day_expired_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/components/wallet/wallet_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'overview_page_copy_model.dart';
export 'overview_page_copy_model.dart';

class OverviewPageCopyWidget extends StatefulWidget {
  const OverviewPageCopyWidget({
    Key? key,
    bool? loadingWallet,
    this.loadingChart,
    this.loadingPackage,
    this.loadingPackageNormal,
  })  : this.loadingWallet = loadingWallet ?? false,
        super(key: key);

  final bool loadingWallet;
  final bool? loadingChart;
  final bool? loadingPackage;
  final bool? loadingPackageNormal;

  @override
  _OverviewPageCopyWidgetState createState() => _OverviewPageCopyWidgetState();
}

class _OverviewPageCopyWidgetState extends State<OverviewPageCopyWidget> {
  late OverviewPageCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OverviewPageCopyModel());

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
    final pieChartColorsList = [Color(0xFFFDC537)];
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    setState(() {
                      FFAppState().loadingWallet = true;
                      FFAppState().loadingChart = true;
                      FFAppState().loadingPackage = true;
                      FFAppState().loadingPackageNomal = true;
                    });
                    _model.refreshWallet =
                        await MyInvestmentGroup.aPIGetWalletCall.call(
                      accessToken: FFAppState().accessToken,
                    );
                    if ((_model.refreshWallet?.succeeded ?? true)) {
                      setState(() {
                        FFAppState().walletResponse =
                            (_model.refreshWallet?.jsonBody ?? '');
                        FFAppState().loadingWallet = false;
                      });
                    }
                    _model.refreshActivities =
                        await MyInvestmentGroup.getActivitiesCall.call(
                      accessToken: FFAppState().accessToken,
                    );
                    _model.refreshStatistic =
                        await MyInvestmentGroup.statisticCall.call(
                      accessToken: FFAppState().accessToken,
                    );
                    _model.packageInvestment =
                        await MyInvestmentGroup.getPackageInvestmentCall.call();
                    _model.faq = await AffGroup.faqCall.call(
                      page: 1,
                      limit: 3,
                    );
                    await actions.updateAndFindDbLocal(
                      (_model.packageInvestment?.jsonBody ?? ''),
                      null,
                      (_model.refreshStatistic?.jsonBody ?? ''),
                      (_model.refreshActivities?.jsonBody ?? ''),
                      null,
                      (_model.faq?.jsonBody ?? ''),
                      null,
                    );
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 48.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Wrap(
                                    spacing: 0.0,
                                    runSpacing: 24.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(
                                                      context)
                                                  .aliasGrayscaleBackgroundWeak,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 32.0, 24.0, 24.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      32.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/Account.png',
                                                                  width: 80.0,
                                                                  height: 80.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Text(
                                                                functions.displayRank(
                                                                    valueOrDefault<
                                                                        double>(
                                                                  (getJsonField(
                                                                                FFAppState().statisticResponse,
                                                                                r'''$.data.total''',
                                                                              ) ==
                                                                              null
                                                                          ? 0
                                                                          : getJsonField(
                                                                              FFAppState().statisticResponse,
                                                                              r'''$.data.total''',
                                                                            ))
                                                                      .toDouble(),
                                                                  0.0,
                                                                )),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .subtitle2Family,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .aliasGrayscaleHeader,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).subtitle2Family),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Congratulation',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText2
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyText2Family,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).aliasGrayscaleHeaderWeak,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                            lineHeight:
                                                                                1.6,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    (getJsonField(
                                                                                  FFAppState().responseProfile,
                                                                                  r'''$.data.first_name''',
                                                                                ) !=
                                                                                null) &&
                                                                            (getJsonField(
                                                                                  FFAppState().responseProfile,
                                                                                  r'''$.data.last_name''',
                                                                                ) !=
                                                                                null)
                                                                        ? functions.displayName(
                                                                            getJsonField(
                                                                              FFAppState().responseProfile,
                                                                              r'''$.data.first_name''',
                                                                            ).toString(),
                                                                            getJsonField(
                                                                              FFAppState().responseProfile,
                                                                              r'''$.data.last_name''',
                                                                            ).toString())
                                                                        : 'Newbie',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyText2Family,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).aliasGrayscaleHeaderWeak,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                          lineHeight:
                                                                              1.6,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'You have earned ',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyText2Family,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .aliasGrayscaleHeaderWeak,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                        lineHeight:
                                                                            1.6,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child:
                                                                      ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      setState(() => _model
                                                                              .notShowEarnMoney =
                                                                          !_model
                                                                              .notShowEarnMoney!);
                                                                    },
                                                                    value: _model
                                                                        .notShowEarnMoney!,
                                                                    onIcon:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .eyeSlash,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .aliasGrayscaleHeader,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                    offIcon:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .eye,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .aliasGrayscaleHeader,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
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
                                                                if (_model
                                                                        .notShowEarnMoney ==
                                                                    false)
                                                                  GradientText(
                                                                    getJsonField(
                                                                              FFAppState().statisticResponse,
                                                                              r'''$.data.total''',
                                                                            ) ==
                                                                            null
                                                                        ? '\$ 0'
                                                                        : functions
                                                                            .displayNumberPrefix(functions.replaceComma(getJsonField(
                                                                            FFAppState().statisticResponse,
                                                                            r'''$.data.total''',
                                                                          ).toString())!),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title1
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).title1Family,
                                                                          fontSize:
                                                                              32.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                          lineHeight:
                                                                              1.0,
                                                                        ),
                                                                    colors: [
                                                                      Color(
                                                                          0x58C9B92A),
                                                                      Color(
                                                                          0xCBDD7210)
                                                                    ],
                                                                    gradientDirection:
                                                                        GradientDirection
                                                                            .ltr,
                                                                    gradientType:
                                                                        GradientType
                                                                            .linear,
                                                                  ),
                                                                if (_model
                                                                        .notShowEarnMoney ==
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.15,
                                                                            0.65),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          GradientText(
                                                                        '*****',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title1
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                              fontSize: 32.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                              lineHeight: 1.0,
                                                                            ),
                                                                        colors: [
                                                                          Color(
                                                                              0x58C9B92A),
                                                                          Color(
                                                                              0xCBDD7210)
                                                                        ],
                                                                        gradientDirection:
                                                                            GradientDirection.ltr,
                                                                        gradientType:
                                                                            GradientType.linear,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'Share',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .ios_share,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lightTextPrimary,
                                                                        size:
                                                                            14.0,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            88.0,
                                                                        height:
                                                                            30.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .neutrals6,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                              color: FlutterFlowTheme.of(context).lightTextPrimary,
                                                                              fontSize: 14.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                            ),
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              0.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(90.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      99.0),
                                                          child: Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                1.0,
                                                            height: 48.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Color(
                                                                      0xFFFFF968),
                                                                  Color(
                                                                      0xFFF6D491)
                                                                ],
                                                                stops: [
                                                                  0.0,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        0.34,
                                                                        -1.0),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        -0.34,
                                                                        1.0),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          99.0),
                                                            ),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Earn more',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 48.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: Color(
                                                                    0x00F8F8F8),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText2Family,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .neutrals2,
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyText2Family),
                                                                      lineHeight:
                                                                          1.0,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 0.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            90.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.walletModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              updateOnChange: true,
                                              child: WalletWidget(
                                                loadingWallet:
                                                    widget.loadingWallet,
                                                displayDes: true,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 20.0, 16.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              setState(() {
                                                                FFAppState()
                                                                    .currentPageOverview = 0;
                                                              });
                                                            },
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Overview',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).title1Family,
                                                                        color: FFAppState().currentPageOverview ==
                                                                                0
                                                                            ? FlutterFlowTheme.of(context).secondaryColor
                                                                            : FlutterFlowTheme.of(context).neutrals2,
                                                                        fontSize: FFAppState().currentPageOverview ==
                                                                                0
                                                                            ? 24.0
                                                                            : 16.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                        lineHeight:
                                                                            1.6,
                                                                      ),
                                                                ),
                                                                if (FFAppState()
                                                                        .currentPageOverview ==
                                                                    0)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            2.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/indicator.png',
                                                                      width:
                                                                          110.0,
                                                                      height:
                                                                          3.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 2.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                        ),
                                                        InkWell(
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                  .currentPageOverview = 1;
                                                            });
                                                          },
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Investment',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .subtitle2Family,
                                                                      color: FFAppState().currentPageOverview == 1
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .secondaryColor
                                                                          : FlutterFlowTheme.of(context)
                                                                              .neutrals2,
                                                                      fontSize: FFAppState().currentPageOverview ==
                                                                              1
                                                                          ? 24.0
                                                                          : 16.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).subtitle2Family),
                                                                      lineHeight:
                                                                          1.6,
                                                                    ),
                                                              ),
                                                              if (FFAppState()
                                                                      .currentPageOverview ==
                                                                  1)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/indicator.png',
                                                                    width:
                                                                        110.0,
                                                                    height: 3.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                FlutterFlowDropDown<String>(
                                                  initialOption: _model
                                                          .dropTimeFirstValue ??=
                                                      'week',
                                                  options: [
                                                    'week',
                                                    'month',
                                                    'year'
                                                  ],
                                                  optionLabels: [
                                                    '7 days',
                                                    '30 days',
                                                    '1 years'
                                                  ],
                                                  onChanged: (val) async {
                                                    setState(() => _model
                                                            .dropTimeFirstValue =
                                                        val);
                                                    _model.chartO =
                                                        await MyInvestmentGroup
                                                            .statisticCall
                                                            .call(
                                                      accessToken: FFAppState()
                                                          .accessToken,
                                                      time: _model
                                                          .dropTimeFirstValue,
                                                    );
                                                    if ((_model.chartO
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .timeFilterStatistic =
                                                            _model
                                                                .dropTimeFirstValue!;
                                                        FFAppState()
                                                                .statisticResponse =
                                                            (_model.chartO
                                                                    ?.jsonBody ??
                                                                '');
                                                      });
                                                    }

                                                    setState(() {});
                                                  },
                                                  width: 100.0,
                                                  textStyleInactive: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .aliasGrayscaleBody,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.02,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2Family),
                                                      ),
                                                  textStyleActive: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.02,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2Family),
                                                      ),
                                                  hintText: '7 days',
                                                  fillColor: FlutterFlowTheme
                                                          .of(context)
                                                      .aliasGrayscaleBackground,
                                                  elevation: 0.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 0.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  hidesUnderline: true,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Visibility(
                                        visible: FFAppState()
                                                .currentPageOverview
                                                .toString() ==
                                            '0',
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 70.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    16.0,
                                                                    16.0,
                                                                    16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if ((widget.loadingWallet ==
                                                                    false) &&
                                                                (_model.notLoadingStatisticRefresh ==
                                                                    true))
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    1.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      getJsonField(
                                                                            FFAppState().statisticResponse,
                                                                            r'''$.data.total''',
                                                                          ) !=
                                                                          FFAppState()
                                                                              .zeroValueNum,
                                                                  child: Stack(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if (getJsonField(
                                                                                FFAppState().statisticResponse,
                                                                                r'''$.data.total''',
                                                                              ) !=
                                                                              null)
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 300.0,
                                                                                height: 300.0,
                                                                                child: FlutterFlowPieChart(
                                                                                  data: FFPieChartData(
                                                                                    values: functions.dynamicToDouble(getJsonField(
                                                                                      FFAppState().statisticResponse,
                                                                                      r'''$.data.detail[:].percent''',
                                                                                    )),
                                                                                    colors: pieChartColorsList,
                                                                                    radius: [50.0],
                                                                                    borderWidth: [1.0],
                                                                                    borderColor: [
                                                                                      Colors.white
                                                                                    ],
                                                                                  ),
                                                                                  donutHoleRadius: 95.0,
                                                                                  donutHoleColor: Colors.white,
                                                                                  sectionLabelType: PieChartSectionLabelType.percent,
                                                                                  sectionLabelStyle: FlutterFlowTheme.of(context).title3.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).title3Family,
                                                                                        fontSize: 16.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title3Family),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      if (getJsonField(
                                                                            FFAppState().statisticResponse,
                                                                            r'''$.data.total''',
                                                                          ) !=
                                                                          null)
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              () {
                                                                                if (_model.dropTimeFirstValue == 'week') {
                                                                                  return '7 day\'s profit';
                                                                                } else if (_model.dropTimeFirstValue == 'month') {
                                                                                  return '30 day\'s profit';
                                                                                } else {
                                                                                  return '1 year\'s profit';
                                                                                }
                                                                              }(),
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                    color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                    lineHeight: 1.6,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              functions.displayNumberPrefix(functions.replaceComma(getJsonField(
                                                                                FFAppState().statisticResponse,
                                                                                r'''$.data.total''',
                                                                              ).toString())!),
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).title1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                    color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                    fontSize: 32.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                    lineHeight: 1.6,
                                                                                  ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  'From',
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                        color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                        lineHeight: 1.5,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                                                                                  child: Text(
                                                                                    functions
                                                                                        .lengthInvestment(getJsonField(
                                                                                          FFAppState().statisticResponse,
                                                                                          r'''$.data.detail''',
                                                                                        )!)
                                                                                        .toString(),
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).title1.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                          color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                          fontSize: 24.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                          lineHeight: 1.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'investment',
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                        color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                        lineHeight: 1.5,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            if (widget
                                                                    .loadingChart ==
                                                                true)
                                                              wrapWithModel(
                                                                model: _model
                                                                    .waitingModel1,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    WaitingWidget(),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .headlineSectionGroupTitleModel1,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              HeadlineSectionGroupTitleWidget(
                                                            title:
                                                                'Investment Pack',
                                                            subTitle: '',
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child: Container(
                                                              height: 200.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    1.0,
                                                                height: 210.0,
                                                                child: Stack(
                                                                  children: [
                                                                    PageView(
                                                                      controller: _model
                                                                              .pageViewController1 ??=
                                                                          PageController(
                                                                              initialPage: 0),
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.of(context).size.width * 1.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/banner-investment-pack-2.png',
                                                                                        ).image,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'NEWBIE',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: TextStyle(
                                                                                              fontFamily: 'Impact',
                                                                                              color: FlutterFlowTheme.of(context).primary1,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              fontSize: 48.0,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                            child: Text(
                                                                                              'INVESTMENT PACK',
                                                                                              textAlign: TextAlign.start,
                                                                                              style: TextStyle(
                                                                                                fontFamily: 'Roboto',
                                                                                                color: FlutterFlowTheme.of(context).primary1,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                fontSize: 16.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Short description here',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                  lineHeight: 1.6,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            '*Hcash is a transaction solution \nin the Quantium universe',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                                                                                                  fontStyle: FontStyle.italic,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                  lineHeight: 1.6,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.of(context).size.width * 1.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/banner-investment-pack-2.png',
                                                                                        ).image,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'NEWBIE',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: TextStyle(
                                                                                              fontFamily: 'Impact',
                                                                                              color: FlutterFlowTheme.of(context).primary1,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              fontSize: 48.0,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                            child: Text(
                                                                                              'INVESTMENT PACK',
                                                                                              textAlign: TextAlign.start,
                                                                                              style: TextStyle(
                                                                                                fontFamily: 'Impact',
                                                                                                color: FlutterFlowTheme.of(context).primary1,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                fontSize: 16.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Short description here',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                  lineHeight: 1.6,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            '*Hcash is a transaction solution \nin the Quantium universe',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                                                                                                  fontStyle: FontStyle.italic,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                  lineHeight: 1.6,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.8,
                                                                              -0.8),
                                                                      child: smooth_page_indicator
                                                                          .SmoothPageIndicator(
                                                                        controller:
                                                                            _model.pageViewController1 ??=
                                                                                PageController(initialPage: 0),
                                                                        count:
                                                                            2,
                                                                        axisDirection:
                                                                            Axis.horizontal,
                                                                        onDotClicked:
                                                                            (i) {
                                                                          _model
                                                                              .pageViewController1!
                                                                              .animateToPage(
                                                                            i,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        effect:
                                                                            smooth_page_indicator.SlideEffect(
                                                                          spacing:
                                                                              8.0,
                                                                          radius:
                                                                              16.0,
                                                                          dotWidth:
                                                                              5.0,
                                                                          dotHeight:
                                                                              5.0,
                                                                          dotColor:
                                                                              FlutterFlowTheme.of(context).aliasGrayscaleLine,
                                                                          activeDotColor:
                                                                              Color(0xFF3F51B5),
                                                                          paintStyle:
                                                                              PaintingStyle.fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        24.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Wrap(
                                                              spacing: 0.0,
                                                              runSpacing: 16.0,
                                                              alignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .start,
                                                              direction: Axis
                                                                  .horizontal,
                                                              runAlignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              verticalDirection:
                                                                  VerticalDirection
                                                                      .down,
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x33FDC537),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.3),
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/image-newbie-pack.png',
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 1.0,
                                                                            height:
                                                                                200.0,
                                                                            fit:
                                                                                BoxFit.none,
                                                                          ),
                                                                        ),
                                                                        if (widget.loadingPackageNormal ==
                                                                            false)
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 50.0, 8.0, 8.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  final itemNewbie = getJsonField(
                                                                                    FFAppState().packageResponseNewbie,
                                                                                    r'''$.data''',
                                                                                  ).toList();
                                                                                  return Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: List.generate(itemNewbie.length, (itemNewbieIndex) {
                                                                                      final itemNewbieItem = itemNewbie[itemNewbieIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                          child: Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                                        child: Text(
                                                                                                          'Only applicable to first-time Quantumania accounts',
                                                                                                          textAlign: TextAlign.start,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                                color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                                                                                                                fontWeight: FontWeight.normal,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                                lineHeight: 1.6,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                                    child: InvestmentPackItemInner1TopBadgeWidget(
                                                                                                      key: Key('Keytrz_${itemNewbieIndex}_of_${itemNewbie.length}'),
                                                                                                      title: getJsonField(
                                                                                                        itemNewbieItem,
                                                                                                        r'''$.package_investment_name''',
                                                                                                      ).toString(),
                                                                                                      subTitle: functions.replaceComma(getJsonField(
                                                                                                        itemNewbieItem,
                                                                                                        r'''$.amount''',
                                                                                                      ).toString()),
                                                                                                      badge: functions.bagdeTimePaymentInterest(getJsonField(
                                                                                                        itemNewbieItem,
                                                                                                        r'''$.list_attr[0].time_range''',
                                                                                                      ).toString()),
                                                                                                      currency: '\$',
                                                                                                    ),
                                                                                                  ),
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                    children: [
                                                                                                      InvestmentPackItem4Widget(
                                                                                                        key: Key('Keyywr_${itemNewbieIndex}_of_${itemNewbie.length}'),
                                                                                                        value: functions.calculateInterestDaily(
                                                                                                            getJsonField(
                                                                                                              itemNewbieItem,
                                                                                                              r'''$.amount''',
                                                                                                            ),
                                                                                                            getJsonField(
                                                                                                              itemNewbieItem,
                                                                                                              r'''$.list_attr[0].daily_interest_rate''',
                                                                                                            ).toString()),
                                                                                                        currency: '\$',
                                                                                                        time: '/ day',
                                                                                                        prefix: '',
                                                                                                      ),
                                                                                                      InvestmentPackItem4Widget(
                                                                                                        key: Key('Keyaml_${itemNewbieIndex}_of_${itemNewbie.length}'),
                                                                                                        value: getJsonField(
                                                                                                          itemNewbieItem,
                                                                                                          r'''$.list_attr[0].daily_interest_rate''',
                                                                                                        ).toString(),
                                                                                                        currency: '',
                                                                                                        time: '/ day',
                                                                                                        prefix: '%',
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Expanded(
                                                                                                        child: Container(
                                                                                                          width: MediaQuery.of(context).size.width * 1.0,
                                                                                                          decoration: BoxDecoration(),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                                                                                                            child: Wrap(
                                                                                                              spacing: 0.0,
                                                                                                              runSpacing: 12.0,
                                                                                                              alignment: WrapAlignment.start,
                                                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                              direction: Axis.horizontal,
                                                                                                              runAlignment: WrapAlignment.start,
                                                                                                              verticalDirection: VerticalDirection.down,
                                                                                                              clipBehavior: Clip.none,
                                                                                                              children: [
                                                                                                                Container(
                                                                                                                  width: MediaQuery.of(context).size.width * 1.0,
                                                                                                                  decoration: BoxDecoration(),
                                                                                                                  child: Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                    children: [
                                                                                                                      TotalGroupItemWidget(
                                                                                                                        key: Key('Keygme_${itemNewbieIndex}_of_${itemNewbie.length}'),
                                                                                                                        title: 'Total revenue',
                                                                                                                        subTitle: functions.replaceComma(getJsonField(
                                                                                                                          itemNewbieItem,
                                                                                                                          r'''$.list_attr[0].withdraw_max''',
                                                                                                                        ).toString()),
                                                                                                                        colorTitle: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                                        colorSubTitle: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                                        subfix: '\$ ',
                                                                                                                      ),
                                                                                                                      TotalGroupItemWidget(
                                                                                                                        key: Key('Keygio_${itemNewbieIndex}_of_${itemNewbie.length}'),
                                                                                                                        title: 'Interest payment',
                                                                                                                        subTitle: functions.timeInterestPayment(getJsonField(
                                                                                                                          itemNewbieItem,
                                                                                                                          r'''$.list_attr[0].time_range''',
                                                                                                                        ).toString()),
                                                                                                                        colorTitle: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                                        colorSubTitle: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                                      ),
                                                                                                                      TotalGroupItemWidget(
                                                                                                                        key: Key('Keyfdq_${itemNewbieIndex}_of_${itemNewbie.length}'),
                                                                                                                        title: 'Principal withdrawal time',
                                                                                                                        subTitle: functions.possibleWithdrawCashOrigin(getJsonField(
                                                                                                                          itemNewbieItem,
                                                                                                                          r'''$.list_attr[0].time_range''',
                                                                                                                        ).toString()),
                                                                                                                        colorTitle: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                                        colorSubTitle: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Padding(
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                      child: Icon(
                                                                                                                        Icons.info_outlined,
                                                                                                                        color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                                                                                                                        size: 16.0,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    Text(
                                                                                                                      'Profit can be withdrawn daily',
                                                                                                                      textAlign: TextAlign.start,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                                            color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                                            fontWeight: FontWeight.normal,
                                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                                            lineHeight: 1.5,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                FFButtonWidget(
                                                                                                                  onPressed: () async {
                                                                                                                    await showModalBottomSheet(
                                                                                                                      isScrollControlled: true,
                                                                                                                      backgroundColor: Colors.transparent,
                                                                                                                      enableDrag: false,
                                                                                                                      context: context,
                                                                                                                      builder: (context) {
                                                                                                                        return Padding(
                                                                                                                          padding: MediaQuery.of(context).viewInsets,
                                                                                                                          child: ModalBuyInvestWidget(
                                                                                                                            name: getJsonField(
                                                                                                                              itemNewbieItem,
                                                                                                                              r'''$.package_investment_name''',
                                                                                                                            ).toString(),
                                                                                                                            timeRange: getJsonField(
                                                                                                                              itemNewbieItem,
                                                                                                                              r'''$.list_attr[0].time_range''',
                                                                                                                            ).toString(),
                                                                                                                            price: getJsonField(
                                                                                                                              itemNewbieItem,
                                                                                                                              r'''$.amount''',
                                                                                                                            ),
                                                                                                                            currency: getJsonField(
                                                                                                                              itemNewbieItem,
                                                                                                                              r'''$.type_currency''',
                                                                                                                            ).toString(),
                                                                                                                            interestDailyPercent: getJsonField(
                                                                                                                              itemNewbieItem,
                                                                                                                              r'''$.list_attr[0].daily_interest_rate''',
                                                                                                                            ).toString(),
                                                                                                                            totalRevenue: getJsonField(
                                                                                                                              itemNewbieItem,
                                                                                                                              r'''$.list_attr[0].withdraw_max''',
                                                                                                                            ).toString(),
                                                                                                                            idPackage: getJsonField(
                                                                                                                              itemNewbieItem,
                                                                                                                              r'''$.id''',
                                                                                                                            ),
                                                                                                                            typeInterest: getJsonField(
                                                                                                                              itemNewbieItem,
                                                                                                                              r'''$.payment_interest_term''',
                                                                                                                            ).toString(),
                                                                                                                          ),
                                                                                                                        );
                                                                                                                      },
                                                                                                                    ).then((value) => setState(() {}));
                                                                                                                  },
                                                                                                                  text: 'Try Now',
                                                                                                                  options: FFButtonOptions(
                                                                                                                    width: double.infinity,
                                                                                                                    height: 48.0,
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                    color: FlutterFlowTheme.of(context).primary1,
                                                                                                                    textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                                          color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                                          fontSize: 16.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
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
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (widget.loadingPackageNormal ==
                                                                            true)
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                50.0,
                                                                                20.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              height: 200.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: wrapWithModel(
                                                                                model: _model.waitingModel2,
                                                                                updateCallback: () => setState(() {}),
                                                                                child: WaitingWidget(),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x33FDC537),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.3),
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              40.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/image-recommend.png',
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 1.0,
                                                                            height:
                                                                                150.0,
                                                                            fit:
                                                                                BoxFit.none,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              32.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              if (widget.loadingPackage == false)
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 34.0, 0.0, 0.0),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final itemReconmend = getJsonField(
                                                                                        FFAppState().packageResponseRank,
                                                                                        r'''$.data''',
                                                                                      ).toList();
                                                                                      if (itemReconmend.isEmpty) {
                                                                                        return Center(
                                                                                          child: Container(
                                                                                            width: MediaQuery.of(context).size.width * 0.9,
                                                                                            child: WaitingWidget(),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(itemReconmend.length, (itemReconmendIndex) {
                                                                                          final itemReconmendItem = itemReconmend[itemReconmendIndex];
                                                                                          return Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                            child: InkWell(
                                                                                              onTap: () async {
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return Padding(
                                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                                      child: ModalBuyInvestWidget(
                                                                                                        name: getJsonField(
                                                                                                          itemReconmendItem,
                                                                                                          r'''$.package_investment_name''',
                                                                                                        ).toString(),
                                                                                                        timeRange: getJsonField(
                                                                                                          itemReconmendItem,
                                                                                                          r'''$.list_attr[0].time_range''',
                                                                                                        ).toString(),
                                                                                                        price: getJsonField(
                                                                                                          itemReconmendItem,
                                                                                                          r'''$.amount''',
                                                                                                        ),
                                                                                                        currency: getJsonField(
                                                                                                          itemReconmendItem,
                                                                                                          r'''$.type_currency''',
                                                                                                        ).toString(),
                                                                                                        interestDailyPercent: getJsonField(
                                                                                                          itemReconmendItem,
                                                                                                          r'''$.list_attr[0].daily_interest_rate''',
                                                                                                        ).toString(),
                                                                                                        totalRevenue: getJsonField(
                                                                                                          itemReconmendItem,
                                                                                                          r'''$.list_attr[0].withdraw_max''',
                                                                                                        ).toString(),
                                                                                                        idPackage: getJsonField(
                                                                                                          itemReconmendItem,
                                                                                                          r'''$.id''',
                                                                                                        ),
                                                                                                        typeInterest: getJsonField(
                                                                                                          itemReconmendItem,
                                                                                                          r'''$.payment_interest_term''',
                                                                                                        ).toString(),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => setState(() {}));
                                                                                              },
                                                                                              child: Container(
                                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                                        child: InvestmentPackItemInner1TopBadgeWidget(
                                                                                                          key: Key('Key9ns_${itemReconmendIndex}_of_${itemReconmend.length}'),
                                                                                                          title: getJsonField(
                                                                                                            itemReconmendItem,
                                                                                                            r'''$.package_investment_name''',
                                                                                                          ).toString(),
                                                                                                          subTitle: functions.replaceComma(getJsonField(
                                                                                                            itemReconmendItem,
                                                                                                            r'''$.amount''',
                                                                                                          ).toString()),
                                                                                                          badge: functions.bagdeTimePaymentInterest(getJsonField(
                                                                                                            itemReconmendItem,
                                                                                                            r'''$.list_attr[0].time_range''',
                                                                                                          ).toString()),
                                                                                                          currency: '\$',
                                                                                                        ),
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                        children: [
                                                                                                          InvestmentPackItem4Widget(
                                                                                                            key: Key('Key80k_${itemReconmendIndex}_of_${itemReconmend.length}'),
                                                                                                            value: functions.calculateInterestDaily(
                                                                                                                getJsonField(
                                                                                                                  itemReconmendItem,
                                                                                                                  r'''$.amount''',
                                                                                                                ),
                                                                                                                getJsonField(
                                                                                                                  itemReconmendItem,
                                                                                                                  r'''$.list_attr[0].daily_interest_rate''',
                                                                                                                ).toString()),
                                                                                                            currency: '\$',
                                                                                                            time: '/ day',
                                                                                                            prefix: '',
                                                                                                          ),
                                                                                                          InvestmentPackItem4Widget(
                                                                                                            key: Key('Keykuw_${itemReconmendIndex}_of_${itemReconmend.length}'),
                                                                                                            value: getJsonField(
                                                                                                              itemReconmendItem,
                                                                                                              r'''$.list_attr[0].daily_interest_rate''',
                                                                                                            ).toString(),
                                                                                                            currency: '',
                                                                                                            time: '/ day',
                                                                                                            prefix: '%',
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              if (widget.loadingPackage == true)
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  height: 200.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x00FFFFFF),
                                                                                  ),
                                                                                  child: wrapWithModel(
                                                                                    model: _model.waitingModel3,
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: WaitingWidget(),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final item =
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .packageResponse,
                                                                      r'''$.data''',
                                                                    ).toList();
                                                                    if (item
                                                                        .isEmpty) {
                                                                      return Center(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.9,
                                                                          child:
                                                                              WaitingWidget(),
                                                                        ),
                                                                      );
                                                                    }
                                                                    return Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          item.length,
                                                                          (itemIndex) {
                                                                        final itemItem =
                                                                            item[itemIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              12.0),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return Padding(
                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                    child: ModalBuyInvestWidget(
                                                                                      name: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.package_investment_name''',
                                                                                      ).toString(),
                                                                                      timeRange: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.list_attr[0].time_range''',
                                                                                      ).toString(),
                                                                                      price: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.amount''',
                                                                                      ),
                                                                                      currency: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.type_currency''',
                                                                                      ).toString(),
                                                                                      interestDailyPercent: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.list_attr[0].daily_interest_rate''',
                                                                                      ).toString(),
                                                                                      totalRevenue: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.list_attr[0].withdraw_max''',
                                                                                      ).toString(),
                                                                                      idPackage: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.id''',
                                                                                      ),
                                                                                      typeInterest: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.payment_interest_term''',
                                                                                      ).toString(),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => setState(() {}));
                                                                            },
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: MediaQuery.of(context).size.width * 1.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                          child: InvestmentPackItemInner1TopBadgeWidget(
                                                                                            key: Key('Keyf56_${itemIndex}_of_${item.length}'),
                                                                                            title: getJsonField(
                                                                                              itemItem,
                                                                                              r'''$.package_investment_name''',
                                                                                            ).toString(),
                                                                                            subTitle: functions.replaceComma(getJsonField(
                                                                                              itemItem,
                                                                                              r'''$.amount''',
                                                                                            ).toString()),
                                                                                            badge: functions.bagdeTimePaymentInterest(getJsonField(
                                                                                              itemItem,
                                                                                              r'''$.list_attr[0].time_range''',
                                                                                            ).toString()),
                                                                                            currency: '\$',
                                                                                          ),
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                          children: [
                                                                                            InvestmentPackItem4Widget(
                                                                                              key: Key('Keyfnr_${itemIndex}_of_${item.length}'),
                                                                                              value: functions.calculateInterestDaily(
                                                                                                  getJsonField(
                                                                                                    itemItem,
                                                                                                    r'''$.amount''',
                                                                                                  ),
                                                                                                  getJsonField(
                                                                                                    itemItem,
                                                                                                    r'''$.list_attr[0].daily_interest_rate''',
                                                                                                  ).toString()),
                                                                                              currency: '\$',
                                                                                              time: '/ day',
                                                                                              prefix: '',
                                                                                            ),
                                                                                            InvestmentPackItem4Widget(
                                                                                              key: Key('Keypyh_${itemIndex}_of_${item.length}'),
                                                                                              value: getJsonField(
                                                                                                itemItem,
                                                                                                r'''$.list_attr[0].daily_interest_rate''',
                                                                                              ).toString(),
                                                                                              currency: '',
                                                                                              time: '/ day',
                                                                                              prefix: '%',
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
                                                                        );
                                                                      }),
                                                                    );
                                                                  },
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          100.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .frequentlyModel1,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        FrequentlyWidget(),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: FFAppState()
                                                .currentPageOverview
                                                .toString() ==
                                            '1',
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 70.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (FFAppState()
                                                              .loadingInventory ==
                                                          false)
                                                        Builder(
                                                          builder: (context) {
                                                            final item =
                                                                getJsonField(
                                                              FFAppState()
                                                                  .responseInterestDaily,
                                                              r'''$.data[0].history_interest''',
                                                            ).toList();
                                                            if (item.isEmpty) {
                                                              return EmtyWidget(
                                                                title:
                                                                    'Your not have investment',
                                                              );
                                                            }
                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children:
                                                                  List.generate(
                                                                      item.length,
                                                                      (itemIndex) {
                                                                final itemItem =
                                                                    item[
                                                                        itemIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          24.0),
                                                                  child: Wrap(
                                                                    spacing:
                                                                        0.0,
                                                                    runSpacing:
                                                                        16.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .start,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    runAlignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    verticalDirection:
                                                                        VerticalDirection
                                                                            .down,
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 1.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                            border:
                                                                                Border.all(
                                                                              color: Color(0x00FFFFFF),
                                                                              width: 0.0,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                16.0,
                                                                                16.0,
                                                                                16.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                  child: InvestmentPackItemInner1TopBadgeWidget(
                                                                                    key: Key('Keyodq_${itemIndex}_of_${item.length}'),
                                                                                    title: getJsonField(
                                                                                      itemItem,
                                                                                      r'''$.name_package_investment''',
                                                                                    ).toString(),
                                                                                    subTitle: getJsonField(
                                                                                      itemItem,
                                                                                      r'''$.price_of_package''',
                                                                                    ).toString(),
                                                                                    badge: functions.bagdeTimePaymentInterest(getJsonField(
                                                                                      itemItem,
                                                                                      r'''$.time_range''',
                                                                                    ).toString()),
                                                                                    currency: '\$',
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.of(context).size.width * 1.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Wrap(
                                                                                      spacing: 0.0,
                                                                                      runSpacing: 12.0,
                                                                                      alignment: WrapAlignment.spaceBetween,
                                                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                                                      direction: Axis.horizontal,
                                                                                      runAlignment: WrapAlignment.start,
                                                                                      verticalDirection: VerticalDirection.down,
                                                                                      clipBehavior: Clip.none,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.4,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: ItemData2Widget(
                                                                                            key: Key('Keyio4_${itemIndex}_of_${item.length}'),
                                                                                            title: functions.replaceComma(getJsonField(
                                                                                              itemItem,
                                                                                              r'''$.accrued_interest''',
                                                                                            ).toString()),
                                                                                            subTitle: 'Accrued interest',
                                                                                            image: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/zqfd8syuk4y6/icon-data-1.png',
                                                                                            prefix: '',
                                                                                            subfix: '\$ ',
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.4,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: ItemDataWidget(
                                                                                            key: Key('Key968_${itemIndex}_of_${item.length}'),
                                                                                            bg: Color(0x19FDC537),
                                                                                            title: functions.replaceComma(getJsonField(
                                                                                              itemItem,
                                                                                              r'''$.available_cash''',
                                                                                            ).toString()),
                                                                                            subTitle: 'Available cash',
                                                                                            icon: Icon(
                                                                                              Icons.show_chart,
                                                                                              color: FlutterFlowTheme.of(context).primary1,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                            prefix: '',
                                                                                            subfix: '\$ ',
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.4,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: ItemDataWidget(
                                                                                            key: Key('Key6g2_${itemIndex}_of_${item.length}'),
                                                                                            bg: Color(0x1A66C56D),
                                                                                            title: functions.replaceComma(getJsonField(
                                                                                              itemItem,
                                                                                              r'''$.available_cash''',
                                                                                            ).toString()),
                                                                                            subTitle: 'Today’s revenue',
                                                                                            icon: Icon(
                                                                                              Icons.attach_money,
                                                                                              color: FlutterFlowTheme.of(context).success,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                            prefix: '',
                                                                                            subfix: '\$ ',
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.4,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: ItemDataWidget(
                                                                                            key: Key('Keyp7f_${itemIndex}_of_${item.length}'),
                                                                                            bg: Color(0x1A4700AB),
                                                                                            title: functions.replaceComma(getJsonField(
                                                                                              itemItem,
                                                                                              r'''$.daily_interest''',
                                                                                            ).toString()),
                                                                                            subTitle: 'Daily Interest',
                                                                                            icon: Icon(
                                                                                              Icons.rotate_left_sharp,
                                                                                              color: Color(0xFF4700AB),
                                                                                              size: 20.0,
                                                                                            ),
                                                                                            prefix: '%',
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        getJsonField(
                                                                                          itemItem,
                                                                                          r'''$.time_start''',
                                                                                        ).toString(),
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                              color: FlutterFlowTheme.of(context).aliasGrayscalePlaceholder,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                              lineHeight: 1.5,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    RoundedDayExpiredWidget(
                                                                                      key: Key('Keyb45_${itemIndex}_of_${item.length}'),
                                                                                      background: Color(0xFFEBECFE),
                                                                                      colorText: Color(0xFF4700AB),
                                                                                      icon: Icon(
                                                                                        Icons.access_time,
                                                                                        color: Color(0xFF4700AB),
                                                                                        size: 14.0,
                                                                                      ),
                                                                                      time: getJsonField(
                                                                                        itemItem,
                                                                                        r'''$.days_left''',
                                                                                      ).toString(),
                                                                                      lable: 'days left',
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed: (getJsonField(
                                                                                      itemItem,
                                                                                      r'''$.available_cash''',
                                                                                    ) ==
                                                                                    FFAppState().zeroValue) &&
                                                                                (getJsonField(
                                                                                      itemItem,
                                                                                      r'''$.time_range''',
                                                                                    ) !=
                                                                                    'unlimited')
                                                                            ? null
                                                                            : () async {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return Padding(
                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                      child: Container(
                                                                                        height: MediaQuery.of(context).size.height * 1.0,
                                                                                        child: ModalMyInvestmentWithdrawWidget(
                                                                                          name: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.name_package_investment''',
                                                                                          ).toString(),
                                                                                          timeRange: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.time_range''',
                                                                                          ).toString(),
                                                                                          price: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.price_of_package''',
                                                                                          ).toString(),
                                                                                          accruedInterest: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.accrued_interest''',
                                                                                          ).toString(),
                                                                                          availableCash: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.available_cash''',
                                                                                          ).toString(),
                                                                                          totalRevenue: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.total_withdraw''',
                                                                                          ).toString(),
                                                                                          dailyInterest: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.daily_interest''',
                                                                                          ).toString(),
                                                                                          timeStart: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.time_start''',
                                                                                          ).toString(),
                                                                                          daysLeft: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.days_left''',
                                                                                          ).toString(),
                                                                                          idHistory: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.id''',
                                                                                          ),
                                                                                          availableBonus: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.available_bonus''',
                                                                                          ).toString(),
                                                                                          dailyBonusWithdrawLimit: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.daily_bonus_withdraw_limit''',
                                                                                          ).toString(),
                                                                                          maxWithdraw: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.max_withdraw''',
                                                                                          ).toString(),
                                                                                          totalWithdraw: getJsonField(
                                                                                            itemItem,
                                                                                            r'''$.total_withdraw''',
                                                                                          ).toString(),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => setState(() {}));
                                                                              },
                                                                        text:
                                                                            'Manage',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              48.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary1,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyText2
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                color: FlutterFlowTheme.of(context).neutrals2,
                                                                                fontSize: 16.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                lineHeight: 1.0,
                                                                              ),
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                0.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(90.0),
                                                                          disabledColor:
                                                                              FlutterFlowTheme.of(context).aliasGrayscaleLine,
                                                                          disabledTextColor:
                                                                              FlutterFlowTheme.of(context).neutrals1,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              }),
                                                            );
                                                          },
                                                        ),
                                                      if (FFAppState()
                                                              .loadingInventory ==
                                                          true)
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .waitingModel4,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                WaitingWidget(),
                                                          ),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .headlineSectionGroupTitleModel2,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              HeadlineSectionGroupTitleWidget(
                                                            title:
                                                                'Investment Pack',
                                                            subTitle: '',
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child: Container(
                                                              height: 200.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    1.0,
                                                                height: 210.0,
                                                                child: Stack(
                                                                  children: [
                                                                    PageView(
                                                                      controller: _model
                                                                              .pageViewController2 ??=
                                                                          PageController(
                                                                              initialPage: 0),
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.of(context).size.width * 1.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/banner-investment-pack-2.png',
                                                                                        ).image,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'NEWBIE',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: TextStyle(
                                                                                              fontFamily: 'Impact',
                                                                                              color: FlutterFlowTheme.of(context).primary1,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              fontSize: 48.0,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                            child: Text(
                                                                                              'INVESTMENT PACK',
                                                                                              textAlign: TextAlign.start,
                                                                                              style: TextStyle(
                                                                                                fontFamily: 'Roboto',
                                                                                                color: FlutterFlowTheme.of(context).primary1,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                fontSize: 16.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Short description here',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                  lineHeight: 1.6,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            '*Hcash is a transaction solution \nin the Quantium universe',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                                                                                                  fontStyle: FontStyle.italic,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                  lineHeight: 1.6,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.of(context).size.width * 1.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/banner-investment-pack-2.png',
                                                                                        ).image,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'NEWBIE',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: TextStyle(
                                                                                              fontFamily: 'Impact',
                                                                                              color: FlutterFlowTheme.of(context).primary1,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              fontSize: 48.0,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                            child: Text(
                                                                                              'INVESTMENT PACK',
                                                                                              textAlign: TextAlign.start,
                                                                                              style: TextStyle(
                                                                                                fontFamily: 'Impact',
                                                                                                color: FlutterFlowTheme.of(context).primary1,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                fontSize: 16.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Short description here',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                  lineHeight: 1.6,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            '*Hcash is a transaction solution \nin the Quantium universe',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                                                                                                  fontStyle: FontStyle.italic,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                  lineHeight: 1.6,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.8,
                                                                              -0.8),
                                                                      child: smooth_page_indicator
                                                                          .SmoothPageIndicator(
                                                                        controller:
                                                                            _model.pageViewController2 ??=
                                                                                PageController(initialPage: 0),
                                                                        count:
                                                                            2,
                                                                        axisDirection:
                                                                            Axis.horizontal,
                                                                        onDotClicked:
                                                                            (i) {
                                                                          _model
                                                                              .pageViewController2!
                                                                              .animateToPage(
                                                                            i,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        effect:
                                                                            smooth_page_indicator.SlideEffect(
                                                                          spacing:
                                                                              8.0,
                                                                          radius:
                                                                              16.0,
                                                                          dotWidth:
                                                                              5.0,
                                                                          dotHeight:
                                                                              5.0,
                                                                          dotColor:
                                                                              FlutterFlowTheme.of(context).aliasGrayscaleLine,
                                                                          activeDotColor:
                                                                              Color(0xFF3F51B5),
                                                                          paintStyle:
                                                                              PaintingStyle.fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        24.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Wrap(
                                                              spacing: 0.0,
                                                              runSpacing: 16.0,
                                                              alignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .start,
                                                              direction: Axis
                                                                  .horizontal,
                                                              runAlignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              verticalDirection:
                                                                  VerticalDirection
                                                                      .down,
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x33FDC537),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.3),
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                15.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/image-recommend.png',
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              height: 150.0,
                                                                              fit: BoxFit.none,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              32.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final listRecomend = getJsonField(
                                                                                        FFAppState().packageResponseNewbie,
                                                                                        r'''$.data''',
                                                                                      ).toList();
                                                                                      if (listRecomend.isEmpty) {
                                                                                        return Center(
                                                                                          child: Container(
                                                                                            width: MediaQuery.of(context).size.width * 0.9,
                                                                                            child: WaitingWidget(),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(listRecomend.length, (listRecomendIndex) {
                                                                                          final listRecomendItem = listRecomend[listRecomendIndex];
                                                                                          return Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                            child: InkWell(
                                                                                              onTap: () async {
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return Padding(
                                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                                      child: ModalBuyInvestWidget(
                                                                                                        name: getJsonField(
                                                                                                          listRecomendItem,
                                                                                                          r'''$.package_investment_name''',
                                                                                                        ).toString(),
                                                                                                        timeRange: getJsonField(
                                                                                                          listRecomendItem,
                                                                                                          r'''$.list_attr[0].time_range''',
                                                                                                        ).toString(),
                                                                                                        price: getJsonField(
                                                                                                          listRecomendItem,
                                                                                                          r'''$.amount''',
                                                                                                        ),
                                                                                                        currency: getJsonField(
                                                                                                          listRecomendItem,
                                                                                                          r'''$.type_currency''',
                                                                                                        ).toString(),
                                                                                                        interestDailyPercent: getJsonField(
                                                                                                          listRecomendItem,
                                                                                                          r'''$.list_attr[0].daily_interest_rate''',
                                                                                                        ).toString(),
                                                                                                        totalRevenue: getJsonField(
                                                                                                          listRecomendItem,
                                                                                                          r'''$.list_attr[0].withdraw_max''',
                                                                                                        ).toString(),
                                                                                                        idPackage: getJsonField(
                                                                                                          listRecomendItem,
                                                                                                          r'''$.id''',
                                                                                                        ),
                                                                                                        typeInterest: getJsonField(
                                                                                                          listRecomendItem,
                                                                                                          r'''$.payment_interest_term''',
                                                                                                        ).toString(),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => setState(() {}));
                                                                                              },
                                                                                              child: Container(
                                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                                        child: InvestmentPackItemInner1TopBadgeWidget(
                                                                                                          key: Key('Key40d_${listRecomendIndex}_of_${listRecomend.length}'),
                                                                                                          title: getJsonField(
                                                                                                            listRecomendItem,
                                                                                                            r'''$.package_investment_name''',
                                                                                                          ).toString(),
                                                                                                          subTitle: getJsonField(
                                                                                                            listRecomendItem,
                                                                                                            r'''$.amount''',
                                                                                                          ).toString(),
                                                                                                          badge: functions.bagdeTimePaymentInterest(getJsonField(
                                                                                                            listRecomendItem,
                                                                                                            r'''$.list_attr[0].time_range''',
                                                                                                          ).toString()),
                                                                                                          currency: '\$',
                                                                                                        ),
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                        children: [
                                                                                                          InvestmentPackItem4Widget(
                                                                                                            key: Key('Keyy5x_${listRecomendIndex}_of_${listRecomend.length}'),
                                                                                                            value: functions.calculateInterestDaily(
                                                                                                                getJsonField(
                                                                                                                  listRecomendItem,
                                                                                                                  r'''$.amount''',
                                                                                                                ),
                                                                                                                getJsonField(
                                                                                                                  listRecomendItem,
                                                                                                                  r'''$.list_attr[0].daily_interest_rate''',
                                                                                                                ).toString()),
                                                                                                            currency: '\$',
                                                                                                            time: '/ day',
                                                                                                            prefix: '',
                                                                                                          ),
                                                                                                          InvestmentPackItem4Widget(
                                                                                                            key: Key('Keyw36_${listRecomendIndex}_of_${listRecomend.length}'),
                                                                                                            value: getJsonField(
                                                                                                              listRecomendItem,
                                                                                                              r'''$.list_attr[0].daily_interest_rate''',
                                                                                                            ).toString(),
                                                                                                            currency: '',
                                                                                                            time: '/ day',
                                                                                                            prefix: '%',
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
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
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0x33FDC537),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      child:
                                                                          Stack(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.3),
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                45.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/image-recommend.png',
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              height: 150.0,
                                                                              fit: BoxFit.none,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                80.0,
                                                                                8.0,
                                                                                8.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) {
                                                                                final element = getJsonField(
                                                                                  FFAppState().packageResponseRank,
                                                                                  r'''$.data''',
                                                                                ).toList();
                                                                                if (element.isEmpty) {
                                                                                  return Center(
                                                                                    child: Container(
                                                                                      width: MediaQuery.of(context).size.width * 0.9,
                                                                                      child: WaitingWidget(),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: List.generate(element.length, (elementIndex) {
                                                                                    final elementItem = element[elementIndex];
                                                                                    return Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                      child: InkWell(
                                                                                        onTap: () async {
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return Padding(
                                                                                                padding: MediaQuery.of(context).viewInsets,
                                                                                                child: ModalBuyInvestWidget(
                                                                                                  name: getJsonField(
                                                                                                    elementItem,
                                                                                                    r'''$.package_investment_name''',
                                                                                                  ).toString(),
                                                                                                  timeRange: getJsonField(
                                                                                                    elementItem,
                                                                                                    r'''$.list_attr[0].time_range''',
                                                                                                  ).toString(),
                                                                                                  price: getJsonField(
                                                                                                    elementItem,
                                                                                                    r'''$.amount''',
                                                                                                  ),
                                                                                                  currency: getJsonField(
                                                                                                    elementItem,
                                                                                                    r'''$.type_currency''',
                                                                                                  ).toString(),
                                                                                                  interestDailyPercent: getJsonField(
                                                                                                    elementItem,
                                                                                                    r'''$.list_attr[0].daily_interest_rate''',
                                                                                                  ).toString(),
                                                                                                  totalRevenue: getJsonField(
                                                                                                    elementItem,
                                                                                                    r'''$.list_attr[0].withdraw_max''',
                                                                                                  ).toString(),
                                                                                                  idPackage: getJsonField(
                                                                                                    elementItem,
                                                                                                    r'''$.id''',
                                                                                                  ),
                                                                                                  typeInterest: getJsonField(
                                                                                                    elementItem,
                                                                                                    r'''$.payment_interest_term''',
                                                                                                  ).toString(),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => setState(() {}));
                                                                                        },
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                                      child: InvestmentPackItemInner1TopBadgeWidget(
                                                                                                        key: Key('Key5ae_${elementIndex}_of_${element.length}'),
                                                                                                        title: getJsonField(
                                                                                                          elementItem,
                                                                                                          r'''$.package_investment_name''',
                                                                                                        ).toString(),
                                                                                                        subTitle: getJsonField(
                                                                                                          elementItem,
                                                                                                          r'''$.amount''',
                                                                                                        ).toString(),
                                                                                                        badge: functions.bagdeTimePaymentInterest(getJsonField(
                                                                                                          elementItem,
                                                                                                          r'''$.list_attr[0].time_range''',
                                                                                                        ).toString()),
                                                                                                        currency: '\$',
                                                                                                      ),
                                                                                                    ),
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                      children: [
                                                                                                        InvestmentPackItem4Widget(
                                                                                                          key: Key('Keyxdo_${elementIndex}_of_${element.length}'),
                                                                                                          value: functions.calculateInterestDaily(
                                                                                                              getJsonField(
                                                                                                                elementItem,
                                                                                                                r'''$.amount''',
                                                                                                              ),
                                                                                                              getJsonField(
                                                                                                                elementItem,
                                                                                                                r'''$.list_attr[0].daily_interest_rate''',
                                                                                                              ).toString()),
                                                                                                          currency: '\$',
                                                                                                          time: '/ day',
                                                                                                          prefix: '',
                                                                                                        ),
                                                                                                        InvestmentPackItem4Widget(
                                                                                                          key: Key('Key6d5_${elementIndex}_of_${element.length}'),
                                                                                                          value: getJsonField(
                                                                                                            elementItem,
                                                                                                            r'''$.list_attr[0].daily_interest_rate''',
                                                                                                          ).toString(),
                                                                                                          currency: '',
                                                                                                          time: '/ day',
                                                                                                          prefix: '%',
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
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    100.0),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .frequentlyModel2,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              FrequentlyWidget(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
