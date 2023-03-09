import '/backend/api_requests/api_calls.dart';
import '/components/account_page_new/account_page_new_widget.dart';
import '/components/aff_component/aff_component_widget.dart';
import '/components/noti_page/noti_page_widget.dart';
import '/components/overview_main_update/overview_main_update_widget.dart';
import '/components/overview_page_copy/overview_page_copy_widget.dart';
import '/components/profile_page/profile_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  _MainPageWidgetState createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isExist = await actions.checkDataExistInTable();
      if (_model.isExist!) {
        _model.compareOutput = await actions.compareDateCurrent();
        if (_model.compareOutput!) {
          _model.statisticUpdate = await MyInvestmentGroup.statisticCall.call(
            accessToken: FFAppState().accessToken,
            time: '',
          );
          if ((_model.statisticUpdate?.succeeded ?? true)) {
            await actions.updateAndFindDbLocal(
              null,
              null,
              (_model.statisticUpdate?.jsonBody ?? ''),
              null,
              null,
              null,
              null,
            );
          }
        }
        await actions.findDataFLocal();
        _model.loginUpdate = await APILoginCall.call(
          email: getJsonField(
            FFAppState().responseProfile,
            r'''$.data.email''',
          ).toString().toString(),
          update: 'inventory',
        );
        _model.inventoryRefresh = await MyInvestmentGroup.getInventoryCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.inventoryRefresh?.succeeded ?? true)) {
          await actions.updateAndFindDbLocal(
            null,
            null,
            null,
            null,
            (_model.inventoryRefresh?.jsonBody ?? ''),
            null,
            null,
          );
        }
        _model.wallet = await MyInvestmentGroup.aPIGetWalletCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.wallet?.succeeded ?? true)) {
          setState(() {
            FFAppState().walletResponse = (_model.wallet?.jsonBody ?? '');
            FFAppState().loadingWallet = false;
          });
        }
        _model.responseAffSub2 = await AffGroup.getSubAffCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.responseAffSub2?.succeeded ?? true)) {
          setState(() {
            FFAppState().responseSubAff =
                (_model.responseAffSub2?.jsonBody ?? '');
            FFAppState().affName = (_model.responseAffSub2?.jsonBody ?? '');
          });
        }
        _model.statisticAff = await AffGroup.getStatisticCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.statisticAff?.succeeded ?? true)) {
          setState(() {
            FFAppState().newsubafff = (_model.statisticAff?.jsonBody ?? '');
            FFAppState().totalSale = (_model.statisticAff?.jsonBody ?? '');
            FFAppState().totalCommission =
                (_model.statisticAff?.jsonBody ?? '');
            FFAppState().totalFn = (_model.statisticAff?.jsonBody ?? '');
          });
        }
      } else {
        _model.faqResponse = await AffGroup.faqCall.call(
          page: 1,
          limit: 2,
        );
        if ((_model.faqResponse?.succeeded ?? true)) {
          setState(() {
            FFAppState().faq = (_model.faqResponse?.jsonBody ?? '');
          });
        }
        _model.responseProfile = await MyInvestmentGroup.aPIProfileCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.responseProfile?.succeeded ?? true)) {
          setState(() {
            FFAppState().responseProfile =
                (_model.responseProfile?.jsonBody ?? '');
          });
          _model.loginResponse = await APILoginCall.call(
            email: getJsonField(
              (_model.responseProfile?.jsonBody ?? ''),
              r'''$.data.email''',
            ).toString().toString(),
            update: 'inventory',
          );
        }
        _model.responseStatistic = await MyInvestmentGroup.statisticCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.responseStatistic?.succeeded ?? true)) {
          setState(() {
            FFAppState().statisticResponse =
                (_model.responseStatistic?.jsonBody ?? '');
          });
          setState(() {
            FFAppState().loadingChart = false;
          });
        }
        _model.responseWallet = await MyInvestmentGroup.aPIGetWalletCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.responseWallet?.succeeded ?? true)) {
          setState(() {
            FFAppState().walletResponse =
                (_model.responseWallet?.jsonBody ?? '');
          });
          setState(() {
            FFAppState().loadingWallet = false;
          });
        }
        _model.packageNoRecommend =
            await MyInvestmentGroup.getPackageInvestmentCall.call();
        if ((_model.packageNoRecommend?.succeeded ?? true)) {
          setState(() {
            FFAppState().packageResponse =
                (_model.packageNoRecommend?.jsonBody ?? '');
            FFAppState().loadingPackage = false;
          });
        }
        _model.responseInventory =
            await MyInvestmentGroup.getInventoryCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.responseInventory?.succeeded ?? true)) {
          setState(() {
            FFAppState().responseInterestDaily =
                (_model.responseInventory?.jsonBody ?? '');
          });
        }
        _model.responseNoti = await MyInvestmentGroup.aPINotificationCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.responseNoti?.succeeded ?? true)) {
          setState(() {
            FFAppState().responseNoti = (_model.responseNoti?.jsonBody ?? '');
          });
        }
        _model.responseActivities =
            await MyInvestmentGroup.getActivitiesCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.responseActivities?.succeeded ?? true)) {
          setState(() {
            FFAppState().responseActivity =
                (_model.responseActivities?.jsonBody ?? '');
          });
        }
        _model.responseAffSub = await AffGroup.getSubAffCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.responseAffSub?.succeeded ?? true)) {
          setState(() {
            FFAppState().responseSubAff =
                (_model.responseAffSub?.jsonBody ?? '');
          });
          setState(() {
            FFAppState().affName = (_model.responseAffSub?.jsonBody ?? '');
          });
        }
        _model.apiResult59c = await AffGroup.getStatisticCall.call(
          accessToken: FFAppState().accessToken,
        );
        if ((_model.apiResult59c?.succeeded ?? true)) {
          setState(() {
            FFAppState().newsubafff = (_model.apiResult59c?.jsonBody ?? '');
          });
          setState(() {
            FFAppState().totalSale = (_model.apiResult59c?.jsonBody ?? '');
          });
          setState(() {
            FFAppState().totalCommission =
                (_model.apiResult59c?.jsonBody ?? '');
          });
          setState(() {
            FFAppState().totalFn = (_model.apiResult59c?.jsonBody ?? '');
          });
        }
        await actions.databaseLocal(
          (_model.packageNoRecommend?.jsonBody ?? ''),
          (_model.responseProfile?.jsonBody ?? ''),
          (_model.responseStatistic?.jsonBody ?? ''),
          (_model.responseActivities?.jsonBody ?? ''),
          (_model.responseInventory?.jsonBody ?? ''),
          (_model.faqResponse?.jsonBody ?? ''),
          (_model.responseNoti?.jsonBody ?? ''),
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(64.0),
          child: AppBar(
            backgroundColor:
                FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/Quantumania.svg',
                                    width: 100.0,
                                    height: 20.0,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Stack(
              alignment: AlignmentDirectional(1.0, -1.0),
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (FFAppState().currentPageIndex == 'notiPage')
                        wrapWithModel(
                          model: _model.notiPageModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: NotiPageWidget(),
                        ),
                      if (FFAppState().currentPageIndex == 'profile')
                        wrapWithModel(
                          model: _model.profilePageModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: ProfilePageWidget(),
                        ),
                      if (FFAppState().currentPageIndex == 'myAccount')
                        wrapWithModel(
                          model: _model.accountPageNewModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: AccountPageNewWidget(),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        wrapWithModel(
                          model: _model.overviewPageCopyModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: OverviewPageCopyWidget(
                            loadingWallet: FFAppState().loadingWallet,
                            loadingChart: FFAppState().loadingChart,
                            loadingPackage: FFAppState().loadingPackage,
                            loadingPackageNormal:
                                FFAppState().loadingPackageNomal,
                          ),
                        ),
                      if (FFAppState().currentPageIndex == 'aff')
                        wrapWithModel(
                          model: _model.affComponentModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: AffComponentWidget(),
                        ),
                      if (FFAppState().currentPageIndex == 'overviewPage')
                        wrapWithModel(
                          model: _model.overviewMainUpdateModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: OverviewMainUpdateWidget(
                            loadingChart: FFAppState().loadingChart,
                            loadingPackage: FFAppState().loadingPackage,
                          ),
                        ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 90.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (FFAppState().currentPageIndex != 'award')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Icon.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  if (FFAppState().currentPageIndex == 'award')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Icon_(4).svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  Container(
                                    width: 50.0,
                                    height: 15.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Visibility(
                                      visible: FFAppState().currentPageIndex ==
                                          'award',
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 0.0),
                                        child: Text(
                                          'Award',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family,
                                                color: Color(0xFF336A4A),
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText2Family),
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () async {
                                  setState(() {
                                    FFAppState().currentPageIndex = 'aff';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().currentPageIndex != 'aff')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Icon_(1).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    if (FFAppState().currentPageIndex == 'aff')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Icon_(5).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    Container(
                                      width: 50.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Visibility(
                                        visible:
                                            FFAppState().currentPageIndex ==
                                                'aff',
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Affiliates',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2Family,
                                                  color: Color(0xFF336A4A),
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2Family),
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  setState(() {
                                    FFAppState().currentPageIndex =
                                        'overviewPage';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().currentPageIndex !=
                                        'overviewPage')
                                      SvgPicture.asset(
                                        'assets/images/Logo_(1).svg',
                                        width: 48.0,
                                        height: 48.0,
                                        fit: BoxFit.cover,
                                      ),
                                    if (FFAppState().currentPageIndex ==
                                        'overviewPage')
                                      SvgPicture.asset(
                                        'assets/images/Logo.svg',
                                        width: 48.0,
                                        height: 48.0,
                                        fit: BoxFit.cover,
                                      ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  setState(() {
                                    FFAppState().currentPageIndex = 'notiPage';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().currentPageIndex !=
                                        'notiPage')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Icon_(2).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    if (FFAppState().currentPageIndex ==
                                        'notiPage')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Icon_(6).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    Container(
                                      width: 50.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Visibility(
                                        visible:
                                            FFAppState().currentPageIndex ==
                                                'notiPage',
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Activities',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2Family,
                                                  color: Color(0xFF336A4A),
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2Family),
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  setState(() {
                                    FFAppState().currentPageIndex = 'myAccount';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().currentPageIndex !=
                                        'myAccount')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Icon_(3).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    if (FFAppState().currentPageIndex ==
                                        'myAccount')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Icon_(7).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    Container(
                                      width: 50.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Visibility(
                                        visible:
                                            FFAppState().currentPageIndex ==
                                                'myAccount',
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Account',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2Family,
                                                  color: Color(0xFF336A4A),
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2Family),
                                                  lineHeight: 1.5,
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
                        ),
                      ),
                      Container(
                        width: 0.0,
                        height: 0.0,
                        child: custom_widgets.NotificationCenter(
                          width: 0.0,
                          height: 0.0,
                          accessToken: FFAppState().accessToken,
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
    );
  }
}
