import '/backend/api_requests/api_calls.dart';
import '/components/investment_pack_item_4/investment_pack_item4_widget.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/modal_my_investment_failed/modal_my_investment_failed_widget.dart';
import '/components/modal_my_investment_success/modal_my_investment_success_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
import '/components/total_noti_bottom/total_noti_bottom_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_investment_payment_model.dart';
export 'my_investment_payment_model.dart';

class MyInvestmentPaymentWidget extends StatefulWidget {
  const MyInvestmentPaymentWidget({
    Key? key,
    this.name,
    this.price,
    this.timeRange,
    this.interestRate,
    this.totalRevenue,
    this.idPackage,
    this.type,
  }) : super(key: key);

  final String? name;
  final int? price;
  final String? timeRange;
  final String? interestRate;
  final String? totalRevenue;
  final int? idPackage;
  final String? type;

  @override
  _MyInvestmentPaymentWidgetState createState() =>
      _MyInvestmentPaymentWidgetState();
}

class _MyInvestmentPaymentWidgetState extends State<MyInvestmentPaymentWidget> {
  late MyInvestmentPaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyInvestmentPaymentModel());

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
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 99.0,
                                      borderWidth: 0.0,
                                      buttonSize: 32.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .aliasGrayscaleInput,
                                      icon: FaIcon(
                                        FontAwesomeIcons.angleLeft,
                                        color: FlutterFlowTheme.of(context)
                                            .aliasGrayscaleBody,
                                        size: 16.0,
                                      ),
                                      onPressed: () async {
                                        context.pop();
                                      },
                                    ),
                                  ),
                                ),
                                Text(
                                  'Payment',
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
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x00FFFFFF),
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
                              16.0, 0.0, 16.0, 48.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 32.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleBackgroundWeak,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 12.0),
                                          child: wrapWithModel(
                                            model: _model
                                                .investmentPackItemInner1TopBadgeModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                InvestmentPackItemInner1TopBadgeWidget(
                                              title: widget.name,
                                              subTitle:
                                                  widget.price?.toString(),
                                              badge: functions
                                                  .bagdeTimePaymentInterest(
                                                      widget.timeRange!),
                                              currency: '\$',
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              wrapWithModel(
                                                model: _model
                                                    .investmentPackItem4Model1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    InvestmentPackItem4Widget(
                                                  value: functions
                                                      .calculateInterestDaily(
                                                          widget.price!,
                                                          widget.interestRate!),
                                                  currency: '\$',
                                                  time: ' / day',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .investmentPackItem4Model2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    InvestmentPackItem4Widget(
                                                  value: widget.interestRate,
                                                  currency: '',
                                                  time: ' / day',
                                                  prefix: '%',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Wrap(
                                          spacing: 0.0,
                                          runSpacing: 12.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .totalGroupItemModel1,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: TotalGroupItemWidget(
                                                    title: 'Total revenue',
                                                    subTitle: functions
                                                        .replaceComma(widget
                                                            .totalRevenue),
                                                    colorTitle: FlutterFlowTheme
                                                            .of(context)
                                                        .aliasGrayscaleLabel,
                                                    colorSubTitle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .aliasGrayscaleBody,
                                                    subfix: '\$',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .totalGroupItemModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: TotalGroupItemWidget(
                                                    title: 'Interest payment',
                                                    subTitle: functions
                                                        .timeInterestPayment(
                                                            widget.timeRange!),
                                                    colorTitle: FlutterFlowTheme
                                                            .of(context)
                                                        .aliasGrayscaleLabel,
                                                    colorSubTitle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .aliasGrayscaleBody,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .totalGroupItemModel3,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: TotalGroupItemWidget(
                                                    title:
                                                        'Principal withdrawal time',
                                                    subTitle: functions
                                                        .possibleWithdrawCashOrigin(
                                                            widget.timeRange!),
                                                    colorTitle: FlutterFlowTheme
                                                            .of(context)
                                                        .aliasGrayscaleLabel,
                                                    colorSubTitle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .aliasGrayscaleBody,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.totalNotiBottomModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: TotalNotiBottomWidget(
                                                text:
                                                    'Profit can be withdrawn daily',
                                              ),
                                            ),
                                            FlutterFlowDropDown<String>(
                                              initialOption:
                                                  _model.dropDownPriceValue ??=
                                                      'USDT',
                                              options: ['USDT', 'QOP', 'QOC'],
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownPriceValue =
                                                      val),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1.0,
                                              height: 40.0,
                                              textStyleInactive:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .aliasGrayscaleBody,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                              hintText: 'Please select...',
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary1,
                                              borderWidth: 2.0,
                                              borderRadius: 10.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 4.0, 12.0, 4.0),
                                              hidesUnderline: true,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Wrap(
                                spacing: 0.0,
                                runSpacing: 24.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Wrap(
                                      spacing: 0.0,
                                      runSpacing: 16.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Current balance',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Josefin Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .aliasGrayscaleLabel,
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family),
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    () {
                                                      if (_model
                                                              .dropDownPriceValue ==
                                                          'QOC') {
                                                        return functions
                                                            .replaceComma(
                                                                getJsonField(
                                                          FFAppState()
                                                              .walletResponse,
                                                          r'''$.data[0].current_balance''',
                                                        ).toString());
                                                      } else if (_model
                                                              .dropDownPriceValue ==
                                                          'QOP') {
                                                        return functions
                                                            .replaceComma(
                                                                getJsonField(
                                                          FFAppState()
                                                              .walletResponse,
                                                          r'''$.data[1].current_balance''',
                                                        ).toString());
                                                      } else {
                                                        return functions
                                                            .replaceComma(
                                                                getJsonField(
                                                          FFAppState()
                                                              .walletResponse,
                                                          r'''$.data[2].current_balance''',
                                                        ).toString());
                                                      }
                                                    }(),
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Josefin Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .aliasGrayscaleBody,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    () {
                                                      if (_model
                                                              .dropDownPriceValue ==
                                                          'QOC') {
                                                        return 'QOC';
                                                      } else if (_model
                                                              .dropDownPriceValue ==
                                                          'QOP') {
                                                        return 'QOP';
                                                      } else {
                                                        return 'USDT';
                                                      }
                                                    }(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Price',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Josefin Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .aliasGrayscaleLabel,
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
                                            Text(
                                              functions.displayNumberPrefix(
                                                  functions.replaceComma(widget
                                                      .price
                                                      ?.toString())!),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Josefin Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .aliasGrayscaleBody,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family),
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Total',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Josefin Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .aliasGrayscaleLabel,
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
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    functions.replaceComma(
                                                        functions.totalPricePayment(
                                                            widget.price!,
                                                            _model
                                                                .dropDownPriceValue!)),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1Family),
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    () {
                                                      if (_model
                                                              .dropDownPriceValue ==
                                                          'QOC') {
                                                        return 'QOC';
                                                      } else if (_model
                                                              .dropDownPriceValue ==
                                                          'QOP') {
                                                        return 'QOP';
                                                      } else {
                                                        return 'USDT';
                                                      }
                                                    }(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          fontSize: 18.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
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
                                  Wrap(
                                    spacing: 16.0,
                                    runSpacing: 16.0,
                                    alignment: WrapAlignment.start,
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
                                                1.0,
                                        decoration: BoxDecoration(),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            _model.buyUnvest =
                                                await MyInvestmentGroup
                                                    .aPIBuyInvestCall
                                                    .call(
                                              accessToken:
                                                  FFAppState().accessToken,
                                              idPackage: widget.idPackage,
                                              name: widget.name,
                                              type: widget.type,
                                              timeRange: widget.timeRange,
                                              price: widget.price?.toString(),
                                              currency:
                                                  _model.dropDownPriceValue,
                                            );
                                            if ((_model.buyUnvest?.succeeded ??
                                                true)) {
                                              _model.responseInventory =
                                                  await MyInvestmentGroup
                                                      .getInventoryCall
                                                      .call(
                                                accessToken:
                                                    FFAppState().accessToken,
                                              );
                                              _model.responseStatistic =
                                                  await MyInvestmentGroup
                                                      .statisticCall
                                                      .call(
                                                accessToken:
                                                    FFAppState().accessToken,
                                              );
                                              _model.responseActivitiy =
                                                  await MyInvestmentGroup
                                                      .getActivitiesCall
                                                      .call(
                                                accessToken:
                                                    FFAppState().accessToken,
                                              );
                                              _model.responseWallet =
                                                  await MyInvestmentGroup
                                                      .aPIGetWalletCall
                                                      .call(
                                                accessToken:
                                                    FFAppState().accessToken,
                                              );
                                              if ((_model.responseWallet
                                                      ?.succeeded ??
                                                  true)) {
                                                setState(() {
                                                  FFAppState().walletResponse =
                                                      (_model.responseWallet
                                                              ?.jsonBody ??
                                                          '');
                                                });
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding:
                                                          MediaQuery.of(context)
                                                              .viewInsets,
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1.0,
                                                        child:
                                                            ModalMyInvestmentSuccessWidget(
                                                          name: widget.name,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));

                                                await actions
                                                    .updateAndFindDbLocal(
                                                  null,
                                                  null,
                                                  (_model.responseStatistic
                                                          ?.jsonBody ??
                                                      ''),
                                                  (_model.responseActivitiy
                                                          ?.jsonBody ??
                                                      ''),
                                                  (_model.responseInventory
                                                          ?.jsonBody ??
                                                      ''),
                                                  null,
                                                  null,
                                                );
                                              }
                                            } else {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.of(context)
                                                            .viewInsets,
                                                    child: Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              1.0,
                                                      child:
                                                          ModalMyInvestmentFailedWidget(
                                                        name: widget.name,
                                                        error: getJsonField(
                                                          (_model.buyUnvest
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.error.message''',
                                                        ).toString(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            }

                                            setState(() {});
                                          },
                                          text: 'Pay now',
                                          options: FFButtonOptions(
                                            width: 100.0,
                                            height: 48.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary1,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyText2
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutrals2,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
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
                                                BorderRadius.circular(90.0),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        decoration: BoxDecoration(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
