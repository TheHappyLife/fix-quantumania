import '/backend/api_requests/api_calls.dart';
import '/components/investment_pack_item_4/investment_pack_item4_widget.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'modal_my_withdraw_success_model.dart';
export 'modal_my_withdraw_success_model.dart';

class ModalMyWithdrawSuccessWidget extends StatefulWidget {
  const ModalMyWithdrawSuccessWidget({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  _ModalMyWithdrawSuccessWidgetState createState() =>
      _ModalMyWithdrawSuccessWidgetState();
}

class _ModalMyWithdrawSuccessWidgetState
    extends State<ModalMyWithdrawSuccessWidget> {
  late ModalMyWithdrawSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalMyWithdrawSuccessModel());

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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 18.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              widget.name!,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title1Family,
                                        color: FlutterFlowTheme.of(context)
                                            .aliasGrayscaleBody,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .title1Family),
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
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 48.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: Image.asset(
                                        'assets/images/88860-success-animation.gif',
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 340.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: Text(
                                        'Withdraw successfully!',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .title1Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .aliasGrayscaleBody,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title1Family),
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: GradientText(
                                        widget.name!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .title1Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .aliasGrayscaleBody,
                                              fontSize: 40.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title1Family),
                                              lineHeight: 1.2,
                                            ),
                                        colors: [
                                          Color(0xFF2378B7),
                                          Color(0xFF04D2C6)
                                        ],
                                        gradientDirection:
                                            GradientDirection.ltr,
                                        gradientType: GradientType.linear,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Text(
                                        'Thank you for investing with us, please click here to check your Activities',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .aliasGrayscaleHeader,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family),
                                              lineHeight: 1.2,
                                            ),
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Text(
                                          'Withdrawal Request available: 2',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .aliasGrayscaleBody,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1Family),
                                                lineHeight: 1.2,
                                              ),
                                        ),
                                      ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.pop();
                                        Navigator.pop(context);
                                      },
                                      text: 'Back to overview',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .aliasGrayscaleLine,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .aliasGrayscaleBody,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
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
                                            BorderRadius.circular(90.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x33FDC537),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Stack(
                                    alignment: AlignmentDirectional(0.0, -1.3),
                                    children: [
                                      Image.asset(
                                        'assets/images/image-recommend.png',
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 150.0,
                                        fit: BoxFit.none,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 32.0, 8.0, 8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FutureBuilder<ApiCallResponse>(
                                                  future: MyInvestmentGroup
                                                      .getPackageInvestmentCall
                                                      .call(
                                                    recommend:
                                                        FFAppState().rank,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              SpinKitFadingCircle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary1,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final containerGetPackageInvestmentResponse =
                                                        snapshot.data!;
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              1.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .aliasGrayscaleBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    12.0,
                                                                    12.0,
                                                                    12.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Recommended investment: high returns in a short time and withdraw anytime',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText2
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText2Family,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .aliasGrayscaleLabel,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText2Family),
                                                                    lineHeight:
                                                                        1.5,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .investmentPackItemInner1TopBadgeModel,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    InvestmentPackItemInner1TopBadgeWidget(
                                                                  title:
                                                                      getJsonField(
                                                                    containerGetPackageInvestmentResponse
                                                                        .jsonBody,
                                                                    r'''$.data[0].package_investment_name''',
                                                                  ).toString(),
                                                                  subTitle:
                                                                      getJsonField(
                                                                    containerGetPackageInvestmentResponse
                                                                        .jsonBody,
                                                                    r'''$.data[0].amount''',
                                                                  ).toString(),
                                                                  badge: functions
                                                                      .bagdeTimePaymentInterest(
                                                                          getJsonField(
                                                                    containerGetPackageInvestmentResponse
                                                                        .jsonBody,
                                                                    r'''$.data[0].list_attr[0].time_range''',
                                                                  ).toString()),
                                                                  currency:
                                                                      '\$',
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: [
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .investmentPackItem4Model1,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        InvestmentPackItem4Widget(
                                                                      value: functions.calculateInterestDaily(
                                                                          getJsonField(
                                                                            containerGetPackageInvestmentResponse.jsonBody,
                                                                            r'''$.data[0].amount''',
                                                                          ),
                                                                          getJsonField(
                                                                            containerGetPackageInvestmentResponse.jsonBody,
                                                                            r'''$.data[0].list_attr[0].daily_interest_rate''',
                                                                          ).toString()),
                                                                      currency:
                                                                          '\$',
                                                                      time:
                                                                          '/ day',
                                                                    ),
                                                                  ),
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .investmentPackItem4Model2,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        InvestmentPackItem4Widget(
                                                                      value:
                                                                          getJsonField(
                                                                        containerGetPackageInvestmentResponse
                                                                            .jsonBody,
                                                                        r'''$.data[0].list_attr[0].daily_interest_rate''',
                                                                      ).toString(),
                                                                      currency:
                                                                          '%',
                                                                      time:
                                                                          ' / day',
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
                                                                          12.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .totalGroupItemModel1,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        TotalGroupItemWidget(
                                                                      title:
                                                                          'Total revenue',
                                                                      subTitle:
                                                                          functions
                                                                              .replaceComma(getJsonField(
                                                                        containerGetPackageInvestmentResponse
                                                                            .jsonBody,
                                                                        r'''$.data[0].list_attr[0].withdraw_max''',
                                                                      ).toString()),
                                                                      colorTitle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .aliasGrayscaleLabel,
                                                                      colorSubTitle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .aliasGrayscaleBody,
                                                                      subfix:
                                                                          '\$',
                                                                    ),
                                                                  ),
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .totalGroupItemModel2,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        TotalGroupItemWidget(
                                                                      title:
                                                                          'Interest payment',
                                                                      subTitle:
                                                                          functions
                                                                              .timeInterestPayment(getJsonField(
                                                                        containerGetPackageInvestmentResponse
                                                                            .jsonBody,
                                                                        r'''$.data[0].list_attr[0].time_range''',
                                                                      ).toString()),
                                                                      colorTitle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .aliasGrayscaleLabel,
                                                                      colorSubTitle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .aliasGrayscaleBody,
                                                                    ),
                                                                  ),
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .totalGroupItemModel3,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        TotalGroupItemWidget(
                                                                      title: functions
                                                                          .possibleWithdrawCashOrigin(
                                                                              getJsonField(
                                                                        containerGetPackageInvestmentResponse
                                                                            .jsonBody,
                                                                        r'''$.data[0].list_attr[0].time_range''',
                                                                      ).toString()),
                                                                      subTitle:
                                                                          'At any time',
                                                                      colorTitle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .aliasGrayscaleLabel,
                                                                      colorSubTitle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .aliasGrayscaleBody,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x00FFFFFF),
                                                                    ),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        if (Navigator.of(context)
                                                                            .canPop()) {
                                                                          context
                                                                              .pop();
                                                                        }
                                                                        context
                                                                            .pushNamed(
                                                                          'My_investment_payment',
                                                                          queryParams:
                                                                              {
                                                                            'name':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                containerGetPackageInvestmentResponse.jsonBody,
                                                                                r'''$.data[0].package_investment_name''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'price':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                containerGetPackageInvestmentResponse.jsonBody,
                                                                                r'''$.data[0].amount''',
                                                                              ),
                                                                              ParamType.int,
                                                                            ),
                                                                            'timeRange':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                containerGetPackageInvestmentResponse.jsonBody,
                                                                                r'''$.data[0].list_attr[0].time_range''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'interestRate':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                containerGetPackageInvestmentResponse.jsonBody,
                                                                                r'''$.data[0].list_attr[0].daily_interest_rate''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'totalRevenue':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                containerGetPackageInvestmentResponse.jsonBody,
                                                                                r'''$.data[0].list_attr[0].withdraw_max''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'idPackage':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                containerGetPackageInvestmentResponse.jsonBody,
                                                                                r'''$.data[0].id''',
                                                                              ),
                                                                              ParamType.int,
                                                                            ),
                                                                            'type':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                containerGetPackageInvestmentResponse.jsonBody,
                                                                                r'''$.data[0].type_currency''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                          }.withoutNulls,
                                                                        );

                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      text:
                                                                          'Invest Now',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width: double
                                                                            .infinity,
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary1,
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
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 48.0,
                                                                    height:
                                                                        48.0,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Image
                                                                            .asset(
                                                                          'assets/images/Line.png',
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
