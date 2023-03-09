import '/components/aff_congrats/aff_congrats_widget.dart';
import '/components/aff_navigation_2/aff_navigation2_widget.dart';
import '/components/investment_pack_item_inner_1_top_icon_2/investment_pack_item_inner1_top_icon2_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'affiliate_detail_model.dart';
export 'affiliate_detail_model.dart';

class AffiliateDetailWidget extends StatefulWidget {
  const AffiliateDetailWidget({
    Key? key,
    this.current,
  }) : super(key: key);

  final String? current;

  @override
  _AffiliateDetailWidgetState createState() => _AffiliateDetailWidgetState();
}

class _AffiliateDetailWidgetState extends State<AffiliateDetailWidget> {
  late AffiliateDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AffiliateDetailModel());

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
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
                                Text(
                                  'Affiliate',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title3Family,
                                        color: FlutterFlowTheme.of(context)
                                            .aliasGrayscaleBody,
                                        fontSize: 24.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .title3Family),
                                        lineHeight: 1.3,
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
              ],
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 0.0,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 48.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.affCongratsModel,
                                updateCallback: () => setState(() {}),
                                child: AffCongratsWidget(),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 0.0),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 24.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.affNavigation2Model,
                                          updateCallback: () => setState(() {}),
                                          child: AffNavigation2Widget(
                                            current: FFAppState().currentDetail,
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          decoration: BoxDecoration(),
                                          child: Wrap(
                                            spacing: 0.0,
                                            runSpacing: 16.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0,
                                                          12.0, 12.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                        height: 500.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 500.0,
                                                          child: Stack(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            50.0),
                                                                child: PageView(
                                                                  controller: _model
                                                                          .pageViewController ??=
                                                                      PageController(
                                                                          initialPage:
                                                                              0),
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                              child: wrapWithModel(
                                                                                model: _model.investmentPackItemInner1TopIcon2Model,
                                                                                updateCallback: () => setState(() {}),
                                                                                child: InvestmentPackItemInner1TopIcon2Widget(
                                                                                  subTitle: 'Facebook#242',
                                                                                  badgeColor: FlutterFlowTheme.of(context).success,
                                                                                  badgeText: 'Active',
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
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
                                                                                          child: wrapWithModel(
                                                                                            model: _model.itemDataModel1,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: ItemDataWidget(
                                                                                              bg: Color(0x19FDC537),
                                                                                              title: '34.6k',
                                                                                              subTitle: 'Sales',
                                                                                              icon: Icon(
                                                                                                Icons.show_chart,
                                                                                                color: FlutterFlowTheme.of(context).primary1,
                                                                                                size: 20.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.4,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: wrapWithModel(
                                                                                            model: _model.itemDataModel2,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: ItemDataWidget(
                                                                                              bg: Color(0x1966C56D),
                                                                                              title: '34.6k',
                                                                                              subTitle: 'Direct Commission',
                                                                                              icon: Icon(
                                                                                                Icons.attach_money,
                                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                                size: 20.0,
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
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                  child: Text(
                                                                                    'Activities',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                          color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                          lineHeight: 1.6,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      height: 120.0,
                                                                                      child: custom_widgets.RadialBar1Point(
                                                                                        width: 120.0,
                                                                                        height: 120.0,
                                                                                        label: 'Visit',
                                                                                        value: 46.0,
                                                                                        colorContainer: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      height: 120.0,
                                                                                      child: custom_widgets.RadialBar1Point(
                                                                                        width: 120.0,
                                                                                        height: 120.0,
                                                                                        label: 'Register',
                                                                                        value: 46.0,
                                                                                        colorContainer: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      height: 120.0,
                                                                                      child: custom_widgets.RadialBar1Point(
                                                                                        width: 120.0,
                                                                                        height: 120.0,
                                                                                        label: 'Purchase',
                                                                                        value: 46.0,
                                                                                        colorContainer: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
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
                                                                  ],
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: smooth_page_indicator
                                                                      .SmoothPageIndicator(
                                                                    controller: _model
                                                                            .pageViewController ??=
                                                                        PageController(
                                                                            initialPage:
                                                                                0),
                                                                    count: 1,
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
                                                                        curve: Curves
                                                                            .ease,
                                                                      );
                                                                    },
                                                                    effect: smooth_page_indicator
                                                                        .ExpandingDotsEffect(
                                                                      expansionFactor:
                                                                          2.0,
                                                                      spacing:
                                                                          8.0,
                                                                      radius:
                                                                          16.0,
                                                                      dotWidth:
                                                                          8.0,
                                                                      dotHeight:
                                                                          8.0,
                                                                      dotColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .aliasGrayscaleLine,
                                                                      activeDotColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary1,
                                                                      paintStyle:
                                                                          PaintingStyle
                                                                              .fill,
                                                                    ),
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
                                              ),
                                              FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: 'Create Campaign',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 48.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary1,
                                                  textStyle: FlutterFlowTheme
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
                                                                .neutrals2,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2Family),
                                                        lineHeight: 1.0,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          90.0),
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
                      ],
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.navBarMainModel,
                  updateCallback: () => setState(() {}),
                  child: NavBarMainWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
