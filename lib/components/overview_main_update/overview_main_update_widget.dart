import '/backend/api_requests/api_calls.dart';
import '/components/badge_brand_small/badge_brand_small_widget.dart';
import '/components/frequently/frequently_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/components/wallet_copy/wallet_copy_widget.dart';
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
import 'overview_main_update_model.dart';
export 'overview_main_update_model.dart';

class OverviewMainUpdateWidget extends StatefulWidget {
  const OverviewMainUpdateWidget({
    Key? key,
    this.loadingChart,
    this.loadingPackage,
  }) : super(key: key);

  final bool? loadingChart;
  final bool? loadingPackage;

  @override
  _OverviewMainUpdateWidgetState createState() =>
      _OverviewMainUpdateWidgetState();
}

class _OverviewMainUpdateWidgetState extends State<OverviewMainUpdateWidget> {
  late OverviewMainUpdateModel _model;
  ScrollController _scrollController = new ScrollController();

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OverviewMainUpdateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  int pageView = 0;

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final pieChartColorsList = [Color(0xFFFDC537)];
    print('After set state $pageView');
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xFFFCFCFC),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      _model.packageInvestment = await MyInvestmentGroup
                          .getPackageInvestmentCall
                          .call();
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
                                0.0, 0.0, 0.0, 200.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF7F7FC),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .aliasGrayscaleBackgroundWeak,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        16.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/Avt.png',
                                                                          width:
                                                                              80.0,
                                                                          height:
                                                                              80.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            4.0),
                                                                        child:
                                                                            Text(
                                                                          'TekNix Resource',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .title3
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).title3Family,
                                                                                color: Color(0xFF14142B),
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title3Family),
                                                                                lineHeight: 1.6,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 16.0,
                                                                              height: 16.0,
                                                                              clipBehavior: Clip.antiAlias,
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Image.asset(
                                                                                'assets/images/account-user_icon_member.png',
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Diamond',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: Color(0xFF262338),
                                                                                  fontWeight: FontWeight.normal,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              16.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Text(
                                                                                '9+',
                                                                                style: FlutterFlowTheme.of(context).title1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                      color: Color(0xFF14142B),
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Investment',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: Color(0xFF14142B),
                                                                                      fontWeight: FontWeight.normal,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              16.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Text(
                                                                                '70%',
                                                                                style: FlutterFlowTheme.of(context).title1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                      color: Color(0xFF14142B),
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'growth',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: Color(0xFF14142B),
                                                                                      fontWeight: FontWeight.normal,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              16.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Text(
                                                                                '3,000+',
                                                                                style: FlutterFlowTheme.of(context).title1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                      color: Color(0xFF14142B),
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'aff partners',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: Color(0xFF14142B),
                                                                                      fontWeight: FontWeight.normal,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            FFButtonWidget(
                                                                              onPressed: () {
                                                                                print('Button pressed ...');
                                                                              },
                                                                              text: 'Earn more',
                                                                              options: FFButtonOptions(
                                                                                width: 130.0,
                                                                                height: 40.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: Color(0xFFD9DBE9),
                                                                                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: Color(0xFF4E4B66),
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                                borderSide: BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
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
                                                              ],
                                                            ),
                                                          ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .aliasGrayscaleBackgroundWeak,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .aliasGrayscaleBackgroundWeak,
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          32.0,
                                                                          24.0,
                                                                          24.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 32.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/Account.png',
                                                                                      width: 80.0,
                                                                                      height: 80.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    functions.displayRank(valueOrDefault<double>(
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
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                          color: FlutterFlowTheme.of(context).aliasGrayscaleHeader,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
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
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                        child: Text(
                                                                                          'Congratulation',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                color: FlutterFlowTheme.of(context).aliasGrayscaleHeaderWeak,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                lineHeight: 1.6,
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
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                              color: FlutterFlowTheme.of(context).aliasGrayscaleHeaderWeak,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                              lineHeight: 1.6,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'You have earned ',
                                                                                      style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                            color: FlutterFlowTheme.of(context).aliasGrayscaleHeaderWeak,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                            lineHeight: 1.6,
                                                                                          ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                      child: ToggleIcon(
                                                                                        onPressed: () async {
                                                                                          setState(() => _model.toggleView = !_model.toggleView!);
                                                                                        },
                                                                                        value: _model.toggleView!,
                                                                                        onIcon: FaIcon(
                                                                                          FontAwesomeIcons.eyeSlash,
                                                                                          color: FlutterFlowTheme.of(context).aliasGrayscaleHeader,
                                                                                          size: 16.0,
                                                                                        ),
                                                                                        offIcon: FaIcon(
                                                                                          FontAwesomeIcons.eye,
                                                                                          color: FlutterFlowTheme.of(context).aliasGrayscaleHeader,
                                                                                          size: 16.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    if (_model.toggleView == false)
                                                                                      GradientText(
                                                                                        getJsonField(
                                                                                                  FFAppState().statisticResponse,
                                                                                                  r'''$.data.total''',
                                                                                                ) ==
                                                                                                null
                                                                                            ? '\$ 0'
                                                                                            : functions.displayNumberPrefix(functions.replaceComma(getJsonField(
                                                                                                FFAppState().statisticResponse,
                                                                                                r'''$.data.total''',
                                                                                              ).toString())!),
                                                                                        style: FlutterFlowTheme.of(context).title1.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                              fontSize: 32.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                              lineHeight: 1.0,
                                                                                            ),
                                                                                        colors: [
                                                                                          Color(0x58C9B92A),
                                                                                          Color(0xCBDD7210)
                                                                                        ],
                                                                                        gradientDirection: GradientDirection.ltr,
                                                                                        gradientType: GradientType.linear,
                                                                                      ),
                                                                                    if (_model.toggleView == true)
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(0.15, 0.65),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                          child: GradientText(
                                                                                            '*****',
                                                                                            style: FlutterFlowTheme.of(context).title1.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                                  fontSize: 32.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                                  lineHeight: 1.0,
                                                                                                ),
                                                                                            colors: [
                                                                                              Color(0x58C9B92A),
                                                                                              Color(0xCBDD7210)
                                                                                            ],
                                                                                            gradientDirection: GradientDirection.ltr,
                                                                                            gradientType: GradientType.linear,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                        child: FFButtonWidget(
                                                                                          onPressed: () {
                                                                                            print('Button pressed ...');
                                                                                          },
                                                                                          text: 'Share',
                                                                                          icon: Icon(
                                                                                            Icons.ios_share,
                                                                                            color: FlutterFlowTheme.of(context).lightTextPrimary,
                                                                                            size: 14.0,
                                                                                          ),
                                                                                          options: FFButtonOptions(
                                                                                            width: 88.0,
                                                                                            height: 30.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).neutrals6,
                                                                                            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                                  color: FlutterFlowTheme.of(context).lightTextPrimary,
                                                                                                  fontSize: 14.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                                ),
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              width: 0.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(90.0),
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
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(99.0),
                                                                              child: Container(
                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                height: 48.0,
                                                                                decoration: BoxDecoration(
                                                                                  gradient: LinearGradient(
                                                                                    colors: [
                                                                                      Color(0xFFFFF968),
                                                                                      Color(0xFFF6D491)
                                                                                    ],
                                                                                    stops: [
                                                                                      0.0,
                                                                                      1.0
                                                                                    ],
                                                                                    begin: AlignmentDirectional(0.34, -1.0),
                                                                                    end: AlignmentDirectional(-0.34, 1.0),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(99.0),
                                                                                ),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () {
                                                                                    print('Button pressed ...');
                                                                                  },
                                                                                  text: 'Earn more',
                                                                                  options: FFButtonOptions(
                                                                                    width: double.infinity,
                                                                                    height: 48.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: Color(0x00F8F8F8),
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          color: FlutterFlowTheme.of(context).neutrals2,
                                                                                          fontSize: 16.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                          lineHeight: 1.0,
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 0.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(90.0),
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
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .walletCopyModel,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              WalletCopyWidget(
                                                            loadingWallet:
                                                                false,
                                                            displayDes: false,
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
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 24.0),
                                                  child: Text(
                                                    'Statitics',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title3Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .aliasGrayscaleHeaderWeak,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .title3Family),
                                                          lineHeight: 1.6,
                                                        ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            FFAppState().currentPageOverview =
                                                                                0;
                                                                          });
                                                                        },
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              'Overview',
                                                                              style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                    color: FFAppState().currentPageOverview == 0 ? FlutterFlowTheme.of(context).secondaryColor : FlutterFlowTheme.of(context).neutrals2,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                    lineHeight: 1.6,
                                                                                  ),
                                                                            ),
                                                                            if (FFAppState().currentPageOverview ==
                                                                                0)
                                                                              Image.asset(
                                                                                'assets/images/indicator.png',
                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                height: 2.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().currentPageOverview =
                                                                              1;
                                                                        });
                                                                      },
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Investment',
                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                  color: FFAppState().currentPageOverview == 1 ? FlutterFlowTheme.of(context).secondaryColor : FlutterFlowTheme.of(context).neutrals2,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                  lineHeight: 1.6,
                                                                                ),
                                                                          ),
                                                                          if (FFAppState().currentPageOverview ==
                                                                              1)
                                                                            Image.asset(
                                                                              'assets/images/indicator.png',
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              height: 2.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  20.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
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
                                                                            .toggleView =
                                                                        !_model
                                                                            .toggleView!);
                                                                  },
                                                                  value: _model
                                                                      .toggleView!,
                                                                  onIcon:
                                                                      FaIcon(
                                                                    FontAwesomeIcons
                                                                        .eyeSlash,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .aliasGrayscaleHeader,
                                                                    size: 16.0,
                                                                  ),
                                                                  offIcon:
                                                                      FaIcon(
                                                                    FontAwesomeIcons
                                                                        .eye,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .aliasGrayscaleHeader,
                                                                    size: 16.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              if (_model
                                                                      .toggleView ==
                                                                  false)
                                                                Text(
                                                                  getJsonField(
                                                                            FFAppState().statisticResponse,
                                                                            r'''$.data.total''',
                                                                          ) ==
                                                                          null
                                                                      ? '\$ 0'
                                                                      : functions
                                                                          .displayNumberPrefix(
                                                                              functions.replaceComma(getJsonField(
                                                                          FFAppState()
                                                                              .statisticResponse,
                                                                          r'''$.data.total''',
                                                                        ).toString())!),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyText2Family,
                                                                        color: Color(
                                                                            0xFF4E4B66),
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                ),
                                                              if (_model
                                                                      .toggleView ==
                                                                  true)
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.15,
                                                                          0.65),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '*****',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).subtitle2Family,
                                                                            color:
                                                                                Color(0xFF4E4B66),
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                            lineHeight:
                                                                                1.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          FlutterFlowDropDown<
                                                              String>(
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
                                                            onChanged:
                                                                (val) async {
                                                              setState(() =>
                                                                  _model.dropTimeFirstValue =
                                                                      val);
                                                              _model.chartO =
                                                                  await MyInvestmentGroup
                                                                      .statisticCall
                                                                      .call(
                                                                accessToken:
                                                                    FFAppState()
                                                                        .accessToken,
                                                                time: _model
                                                                    .dropTimeFirstValue,
                                                              );
                                                              if ((_model.chartO
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .timeFilterStatistic =
                                                                      _model
                                                                          .dropTimeFirstValue!;
                                                                  FFAppState()
                                                                      .statisticResponse = (_model
                                                                          .chartO
                                                                          ?.jsonBody ??
                                                                      '');
                                                                });
                                                              }

                                                              setState(() {});
                                                            },
                                                            width: 100.0,
                                                            textStyleInactive:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText2Family,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .aliasGrayscaleBody,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.02,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyText2Family),
                                                                    ),
                                                            textStyleActive:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText2Family,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.02,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyText2Family),
                                                                    ),
                                                            hintText: '7 days',
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .aliasGrayscaleBackground,
                                                            elevation: 0.0,
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderWidth: 0.0,
                                                            borderRadius: 0.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if ((FFAppState()
                                                                    .currentPageOverview ==
                                                                0) &&
                                                            (widget.loadingChart ==
                                                                false))
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
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      BoxDecoration(),
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
                                                                            Container(
                                                                              width: 300.0,
                                                                              height: 300.0,
                                                                              child: FlutterFlowPieChart(
                                                                                data: FFPieChartData(
                                                                                  values: functions.dynamicToDouble(getJsonField(
                                                                                    FFAppState().statisticResponse,
                                                                                    r'''$.data.detail[:].percent''',
                                                                                  )),
                                                                                  colors: pieChartColorsList,
                                                                                  radius: [
                                                                                    50.0
                                                                                  ],
                                                                                  borderWidth: [
                                                                                    1.0
                                                                                  ],
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
                                                                              '30 day’s profit',
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
                                                                              functions.displayNumberPrefix(getJsonField(
                                                                                FFAppState().statisticResponse,
                                                                                r'''$.data.total''',
                                                                              ).toString()),
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
                                                              ],
                                                            ),
                                                          ),
                                                        if ((widget.loadingChart ==
                                                                true) &&
                                                            (FFAppState()
                                                                    .currentPageOverview ==
                                                                0))
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
                                                    if (FFAppState()
                                                            .currentPageOverview
                                                            .toString() ==
                                                        '1')
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          32.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final itemInvest =
                                                                      getJsonField(
                                                                    FFAppState()
                                                                        .responseInterestDaily,
                                                                    r'''$.data[0].history_interest''',
                                                                  ).toList();
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        itemInvest
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            itemInvestIndex) {
                                                                      final itemInvestItem =
                                                                          itemInvest[
                                                                              itemInvestIndex];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'My_investment_detail',
                                                                            queryParams:
                                                                                {
                                                                              'accuredInterest': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.accrued_interest''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'name': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.name_package_investment''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'availableCash': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.available_cash''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'startDay': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.time_start''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'todayProfit': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.today_profit''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'timeRange': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.time_range''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'daysLeft': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.days_left''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'idHistory': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.id''',
                                                                                ),
                                                                                ParamType.int,
                                                                              ),
                                                                              'dailyInterest': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.daily_interest''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'price': serializeParam(
                                                                                getJsonField(
                                                                                  itemInvestItem,
                                                                                  r'''$.price_of_package''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
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
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/packpage-1.png',
                                                                                              width: 56.0,
                                                                                              height: 56.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Container(
                                                                                            width: MediaQuery.of(context).size.width * 0.6,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0x00FFFFFF),
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  getJsonField(
                                                                                                    itemInvestItem,
                                                                                                    r'''$..name_package_investment''',
                                                                                                  ).toString().maybeHandleOverflow(
                                                                                                        maxChars: 20,
                                                                                                        replacement: '…',
                                                                                                      ),
                                                                                                  textAlign: TextAlign.start,
                                                                                                  maxLines: 1,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: Color(0xFF4E4B66),
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        lineHeight: 1.6,
                                                                                                      ),
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                      child: GradientText(
                                                                                                        '+${functions.replaceComma(getJsonField(
                                                                                                          itemInvestItem,
                                                                                                          r'''$.available_cash''',
                                                                                                        ).toString())}'
                                                                                                            .maybeHandleOverflow(
                                                                                                          maxChars: 20,
                                                                                                          replacement: '…',
                                                                                                        ),
                                                                                                        textAlign: TextAlign.end,
                                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                                              lineHeight: 1.7,
                                                                                                            ),
                                                                                                        colors: [
                                                                                                          Color(0xFF402B67),
                                                                                                          Color(0xFF31B694)
                                                                                                        ],
                                                                                                        gradientDirection: GradientDirection.ltr,
                                                                                                        gradientType: GradientType.linear,
                                                                                                      ),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: 16.0,
                                                                                                      height: 16.0,
                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                      decoration: BoxDecoration(
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                      child: Image.asset(
                                                                                                        'assets/images/coin_update.png',
                                                                                                        fit: BoxFit.cover,
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        'today',
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                              color: Color(0xFFA0A3BD),
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Container(
                                                                                            width: MediaQuery.of(context).size.width * 0.3,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0x00FFFFFF),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 4.0),
                                                                                                        child: Text(
                                                                                                          getJsonField(
                                                                                                            itemInvestItem,
                                                                                                            r'''$.price_of_package''',
                                                                                                          ).toString().maybeHandleOverflow(
                                                                                                                maxChars: 20,
                                                                                                                replacement: '…',
                                                                                                              ),
                                                                                                          textAlign: TextAlign.end,
                                                                                                          maxLines: 1,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                color: Color(0xFF4E4B66),
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                lineHeight: 1.7,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Container(
                                                                                                        width: 16.0,
                                                                                                        height: 16.0,
                                                                                                        clipBehavior: Clip.antiAlias,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                        ),
                                                                                                        child: Image.asset(
                                                                                                          'assets/images/coin_update.png',
                                                                                                          fit: BoxFit.cover,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  BadgeBrandSmallWidget(
                                                                                                    key: Key('Keypc2_${itemInvestIndex}_of_${itemInvest.length}'),
                                                                                                    image: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/xmxuzlkcne9h/Calendar.png',
                                                                                                    label: '${getJsonField(
                                                                                                      itemInvestItem,
                                                                                                      r'''$.days_left''',
                                                                                                    ).toString()} days left',
                                                                                                    colorLabel: Color(0xFF38C976),
                                                                                                    sizeImage: 16,
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
                                                                            Divider(
                                                                              height: 1.0,
                                                                              color: FlutterFlowTheme.of(context).aliasGrayscaleLine,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
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
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1.0,
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    1.0,
                                                                height: 115.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: ListView(
                                                                  controller:
                                                                      _scrollController,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if ((pageView) ==
                                                                              0)
                                                                            Image.asset(
                                                                              'assets/images/Name_Investment=1,_Active=Yes,_Line=Yes.png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          if ((pageView) !=
                                                                              0)
                                                                            Image.asset(
                                                                              'assets/images/ml88i_4.png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if ((pageView) ==
                                                                              1)
                                                                            Image.asset(
                                                                              'assets/images/package_2-active..png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          if ((pageView) !=
                                                                              1)
                                                                            Image.asset(
                                                                              'assets/images/9hsjc_2.png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if ((pageView) ==
                                                                              2)
                                                                            Image.asset(
                                                                              'assets/images/package_3-active..png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          if ((pageView) !=
                                                                              2)
                                                                            Image.asset(
                                                                              'assets/images/No.png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if ((pageView) ==
                                                                              3)
                                                                            Image.asset(
                                                                              'assets/images/package_4-active..png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          if ((pageView) !=
                                                                              3)
                                                                            Image.asset(
                                                                              'assets/images/ml88i_4.png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if ((pageView) ==
                                                                              4)
                                                                            Image.asset(
                                                                              'assets/images/package_5-active..png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          if ((pageView) !=
                                                                              4)
                                                                            Image.asset(
                                                                              'assets/images/x5rbw_5.png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if ((pageView) ==
                                                                              5)
                                                                            Image.asset(
                                                                              'assets/images/package_6-active..png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          if ((pageView) !=
                                                                              5)
                                                                            Image.asset(
                                                                              'assets/images/34rbv_6.png',
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                        ],
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
                                                Container(
                                                  width: double.infinity,
                                                  height: 350.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (widget
                                                              .loadingPackage ==
                                                          false)
                                                        Builder(
                                                          builder: (context) {
                                                            final getItemNewBie =
                                                                getJsonField(
                                                              FFAppState()
                                                                  .packageResponse,
                                                              r'''$.data''',
                                                            ).toList();
                                                            return Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 350.0,
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: PageView
                                                                        .builder(
                                                                      onPageChanged:
                                                                          (indexPageView) {
                                                                        setState(
                                                                            () {
                                                                          _scrollController.animateTo(
                                                                              (indexPageView * 140),
                                                                              curve: Curves.linear,
                                                                              duration: const Duration(milliseconds: 500));
                                                                          pageView =
                                                                              indexPageView;
                                                                        });
                                                                      },
                                                                      controller: _model
                                                                              .pageViewController ??=
                                                                          PageController(
                                                                              initialPage: min(0, getItemNewBie.length - 1)),
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      itemCount:
                                                                          getItemNewBie
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              getItemNewBieIndex) {
                                                                        final getItemNewBieItem =
                                                                            getItemNewBie[getItemNewBieIndex];
                                                                        return Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                      child: Material(
                                                                                        color: Colors.transparent,
                                                                                        elevation: 0.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          child: Container(
                                                                                            width: MediaQuery.of(context).size.width * 1.0,
                                                                                            decoration: BoxDecoration(
                                                                                              gradient: LinearGradient(
                                                                                                colors: [
                                                                                                  FlutterFlowTheme.of(context).neutrals8,
                                                                                                  FlutterFlowTheme.of(context).neutrals8
                                                                                                ],
                                                                                                stops: [0.0, 1.0],
                                                                                                begin: AlignmentDirectional(0.0, -1.0),
                                                                                                end: AlignmentDirectional(0, 1.0),
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              border: Border.all(
                                                                                                color: Color(0xFFD9DBE9),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                                    child: Wrap(
                                                                                                      spacing: 0.0,
                                                                                                      runSpacing: 20.0,
                                                                                                      alignment: WrapAlignment.start,
                                                                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                      direction: Axis.horizontal,
                                                                                                      runAlignment: WrapAlignment.start,
                                                                                                      verticalDirection: VerticalDirection.down,
                                                                                                      clipBehavior: Clip.none,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                          children: [
                                                                                                            Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                                                  child: Text(
                                                                                                                    'AVAILABLE FOR NEW ACCOUNT ONLY',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                                          fontWeight: FontWeight.normal,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Text(
                                                                                                                  getJsonField(
                                                                                                                    getItemNewBieItem,
                                                                                                                    r'''$.package_investment_name''',
                                                                                                                  ).toString(),
                                                                                                                  style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                                                        color: Color(0xFF4E4B66),
                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                                                        lineHeight: 1.6,
                                                                                                                      ),
                                                                                                                ),
                                                                                                                Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Padding(
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        '\$',
                                                                                                                        style: FlutterFlowTheme.of(context).title1.override(
                                                                                                                              fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                                                              color: Color(0xFF262338),
                                                                                                                              fontSize: 32.0,
                                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                                                              lineHeight: 1.6,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    Text(
                                                                                                                      valueOrDefault<String>(
                                                                                                                        functions.replaceComma(getJsonField(
                                                                                                                          getItemNewBieItem,
                                                                                                                          r'''$.amount''',
                                                                                                                        ).toString()),
                                                                                                                        '0',
                                                                                                                      ),
                                                                                                                      style: FlutterFlowTheme.of(context).title1.override(
                                                                                                                            fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                                                            color: Color(0xFF262338),
                                                                                                                            fontSize: 32.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                                                            lineHeight: 1.2,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                          children: [
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                                  child: GradientText(
                                                                                                                    '\$',
                                                                                                                    textAlign: TextAlign.start,
                                                                                                                    style: FlutterFlowTheme.of(context).title1.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                                                          lineHeight: 1.6,
                                                                                                                        ),
                                                                                                                    colors: [Color(0xFF1ECE4F), Color(0xFF0BAA8D)],
                                                                                                                    gradientDirection: GradientDirection.ltr,
                                                                                                                    gradientType: GradientType.linear,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                GradientText(
                                                                                                                  functions.calculateInterestDaily(
                                                                                                                      getJsonField(
                                                                                                                        getItemNewBieItem,
                                                                                                                        r'''$.amount''',
                                                                                                                      ),
                                                                                                                      getJsonField(
                                                                                                                        getItemNewBieItem,
                                                                                                                        r'''$.list_attr[0].daily_interest_rate''',
                                                                                                                      ).toString()),
                                                                                                                  textAlign: TextAlign.start,
                                                                                                                  style: FlutterFlowTheme.of(context).title1.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                                                        lineHeight: 1.6,
                                                                                                                      ),
                                                                                                                  colors: [
                                                                                                                    Color(0xFF1ECE4F),
                                                                                                                    Color(0xFF0BAA8D)
                                                                                                                  ],
                                                                                                                  gradientDirection: GradientDirection.ltr,
                                                                                                                  gradientType: GradientType.linear,
                                                                                                                ),
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'day',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                          color: Color(0xFF4E4B66),
                                                                                                                          fontWeight: FontWeight.normal,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                          lineHeight: 1.6,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                GradientText(
                                                                                                                  getJsonField(
                                                                                                                    getItemNewBieItem,
                                                                                                                    r'''$.list_attr[0].daily_interest_rate''',
                                                                                                                  ).toString(),
                                                                                                                  textAlign: TextAlign.start,
                                                                                                                  style: FlutterFlowTheme.of(context).title1.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).title1Family,
                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).title1Family),
                                                                                                                        lineHeight: 1.6,
                                                                                                                      ),
                                                                                                                  colors: [
                                                                                                                    Color(0xFF1ECE4F),
                                                                                                                    Color(0xFF0BAA8D)
                                                                                                                  ],
                                                                                                                  gradientDirection: GradientDirection.ltr,
                                                                                                                  gradientType: GradientType.linear,
                                                                                                                ),
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'year',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                          fontWeight: FontWeight.normal,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                          lineHeight: 1.6,
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
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(99.0),
                                                                                                            child: Container(
                                                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                                                              height: 40.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                gradient: LinearGradient(
                                                                                                                  colors: [
                                                                                                                    Color(0xFFFFF968),
                                                                                                                    Color(0xFFF6D491)
                                                                                                                  ],
                                                                                                                  stops: [0.0, 1.0],
                                                                                                                  begin: AlignmentDirectional(0.34, -1.0),
                                                                                                                  end: AlignmentDirectional(-0.34, 1.0),
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(99.0),
                                                                                                              ),
                                                                                                              child: FFButtonWidget(
                                                                                                                onPressed: () async {
                                                                                                                  context.pushNamed(
                                                                                                                    'invest_detail',
                                                                                                                    queryParams: {
                                                                                                                      'name': serializeParam(
                                                                                                                        getJsonField(
                                                                                                                          getItemNewBieItem,
                                                                                                                          r'''$.package_investment_name''',
                                                                                                                        ).toString(),
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                      'price': serializeParam(
                                                                                                                        getJsonField(
                                                                                                                          getItemNewBieItem,
                                                                                                                          r'''$.amount''',
                                                                                                                        ),
                                                                                                                        ParamType.int,
                                                                                                                      ),
                                                                                                                      'dailyInterestRate': serializeParam(
                                                                                                                        getJsonField(
                                                                                                                          getItemNewBieItem,
                                                                                                                          r'''$.list_attr[0].daily_interest_rate''',
                                                                                                                        ).toString(),
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                      'totalWithdrawal': serializeParam(
                                                                                                                        getJsonField(
                                                                                                                          getItemNewBieItem,
                                                                                                                          r'''$.list_attr[0].withdraw_max''',
                                                                                                                        ).toString(),
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                      'timeRange': serializeParam(
                                                                                                                        getJsonField(
                                                                                                                          getItemNewBieItem,
                                                                                                                          r'''$.list_attr[0].time_range''',
                                                                                                                        ).toString(),
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                      'idPackage': serializeParam(
                                                                                                                        getJsonField(
                                                                                                                          getItemNewBieItem,
                                                                                                                          r'''$.id''',
                                                                                                                        ),
                                                                                                                        ParamType.int,
                                                                                                                      ),
                                                                                                                      'typeInterest': serializeParam(
                                                                                                                        getJsonField(
                                                                                                                          getItemNewBieItem,
                                                                                                                          r'''$.payment_interest_term''',
                                                                                                                        ).toString(),
                                                                                                                        ParamType.String,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                  );
                                                                                                                },
                                                                                                                text: 'Invest now',
                                                                                                                options: FFButtonOptions(
                                                                                                                  width: double.infinity,
                                                                                                                  height: 40.0,
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                  color: Color(0x00FDFCFC),
                                                                                                                  textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                                        color: FlutterFlowTheme.of(context).neutrals2,
                                                                                                                        fontSize: 16.0,
                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                                        lineHeight: 1.0,
                                                                                                                      ),
                                                                                                                  elevation: 0.0,
                                                                                                                  borderSide: BorderSide(
                                                                                                                    color: Colors.transparent,
                                                                                                                    width: 0.0,
                                                                                                                  ),
                                                                                                                  borderRadius: BorderRadius.circular(90.0),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                                                                                                          child: Container(
                                                                                                            height: 40.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              borderRadius: BorderRadius.circular(90.0),
                                                                                                              border: Border.all(
                                                                                                                color: FlutterFlowTheme.of(context).primary1,
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  GradientText(
                                                                                                                    'Share',
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                                          color: FlutterFlowTheme.of(context).primary1,
                                                                                                                          fontSize: 16.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                                          lineHeight: 1.0,
                                                                                                                        ),
                                                                                                                    colors: [Color(0xFFC9B92A), Color(0xFFDD7210)],
                                                                                                                    gradientDirection: GradientDirection.ltr,
                                                                                                                    gradientType: GradientType.linear,
                                                                                                                  ),
                                                                                                                  Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                                    child: Icon(
                                                                                                                      Icons.ios_share,
                                                                                                                      color: FlutterFlowTheme.of(context).primary1,
                                                                                                                      size: 16.0,
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
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child: smooth_page_indicator
                                                                          .SmoothPageIndicator(
                                                                        controller:
                                                                            _model.pageViewController ??=
                                                                                PageController(initialPage: min(0, getItemNewBie.length - 1)),
                                                                        count: getItemNewBie
                                                                            .length,
                                                                        axisDirection:
                                                                            Axis.horizontal,
                                                                        onDotClicked:
                                                                            (i) {
                                                                          _model
                                                                              .pageViewController!
                                                                              .animateToPage(
                                                                            i,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        effect:
                                                                            smooth_page_indicator.ExpandingDotsEffect(
                                                                          expansionFactor:
                                                                              4.0,
                                                                          spacing:
                                                                              8.0,
                                                                          radius:
                                                                              16.0,
                                                                          dotWidth:
                                                                              6.0,
                                                                          dotHeight:
                                                                              6.0,
                                                                          dotColor:
                                                                              Color(0xFF9E9E9E),
                                                                          activeDotColor:
                                                                              Color(0xFF31B694),
                                                                          paintStyle:
                                                                              PaintingStyle.fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      if (widget
                                                              .loadingPackage ==
                                                          true)
                                                        wrapWithModel(
                                                          model: _model
                                                              .waitingModel2,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              WaitingWidget(),
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
                                    wrapWithModel(
                                      model: _model.frequentlyModel,
                                      updateCallback: () => setState(() {}),
                                      child: FrequentlyWidget(),
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
      ),
    );
  }
}
