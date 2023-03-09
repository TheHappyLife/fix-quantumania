import '/backend/api_requests/api_calls.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/item_data_2/item_data2_widget.dart';
import '/components/modal_withdraw_cash_ogirin_failure/modal_withdraw_cash_ogirin_failure_widget.dart';
import '/components/modal_withdraw_cash_origin_success/modal_withdraw_cash_origin_success_widget.dart';
import '/components/rounded_day_expired/rounded_day_expired_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_my_investment_withdraw_model.dart';
export 'modal_my_investment_withdraw_model.dart';

class ModalMyInvestmentWithdrawWidget extends StatefulWidget {
  const ModalMyInvestmentWithdrawWidget({
    Key? key,
    this.name,
    this.timeRange,
    this.price,
    this.accruedInterest,
    this.availableCash,
    this.totalRevenue,
    this.dailyInterest,
    this.timeStart,
    this.daysLeft,
    this.idHistory,
    this.availableBonus,
    this.dailyBonusWithdrawLimit,
    this.maxWithdraw,
    this.totalWithdraw,
  }) : super(key: key);

  final String? name;
  final String? timeRange;
  final String? price;
  final String? accruedInterest;
  final String? availableCash;
  final String? totalRevenue;
  final String? dailyInterest;
  final String? timeStart;
  final String? daysLeft;
  final int? idHistory;
  final String? availableBonus;
  final String? dailyBonusWithdrawLimit;
  final String? maxWithdraw;
  final String? totalWithdraw;

  @override
  _ModalMyInvestmentWithdrawWidgetState createState() =>
      _ModalMyInvestmentWithdrawWidgetState();
}

class _ModalMyInvestmentWithdrawWidgetState
    extends State<ModalMyInvestmentWithdrawWidget> {
  late ModalMyInvestmentWithdrawModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalMyInvestmentWithdrawModel());

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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
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
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Detail manage investment',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                fontSize: 24.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 1.0,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: wrapWithModel(
                                      model: _model
                                          .investmentPackItemInner1TopBadgeModel,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          InvestmentPackItemInner1TopBadgeWidget(
                                        title: widget.name,
                                        subTitle: widget.price,
                                        badge:
                                            functions.bagdeTimePaymentInterest(
                                                widget.timeRange!),
                                        currency: '\$',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 24.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      decoration: BoxDecoration(),
                                      child: Wrap(
                                        spacing: 0.0,
                                        runSpacing: 12.0,
                                        alignment: WrapAlignment.spaceBetween,
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
                                                0.4,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.itemData2Model,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: ItemData2Widget(
                                                title: functions.replaceComma(
                                                    widget.accruedInterest),
                                                subTitle: 'Accrued interest',
                                                image:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/zqfd8syuk4y6/icon-data-1.png',
                                                prefix: '',
                                                subfix: '\$ ',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.itemDataModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: ItemDataWidget(
                                                bg: Color(0x19FDC537),
                                                title: functions.replaceComma(
                                                    widget.availableCash),
                                                subTitle: 'Available cash',
                                                icon: Icon(
                                                  Icons.show_chart,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary1,
                                                  size: 20.0,
                                                ),
                                                prefix: '',
                                                subfix: '\$ ',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.itemDataModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: ItemDataWidget(
                                                bg: Color(0x1A66C56D),
                                                title: functions.replaceComma(
                                                    widget.totalRevenue),
                                                subTitle: 'Today’s revenue',
                                                icon: Icon(
                                                  Icons.attach_money,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  size: 20.0,
                                                ),
                                                prefix: '',
                                                subfix: '\$ ',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.itemDataModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: ItemDataWidget(
                                                bg: Color(0x1A4700AB),
                                                title: functions.replaceComma(
                                                    widget.dailyInterest),
                                                subTitle: 'Daily Interest',
                                                icon: Icon(
                                                  Icons.rotate_left,
                                                  color: Color(0xFF4700AB),
                                                  size: 20.0,
                                                ),
                                                prefix: '%',
                                                subfix: '',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.timeStart!,
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
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2Family),
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                      wrapWithModel(
                                        model: _model.roundedDayExpiredModel,
                                        updateCallback: () => setState(() {}),
                                        child: RoundedDayExpiredWidget(
                                          background: Color(0x1FFA9494),
                                          colorText: widget.daysLeft == '0'
                                              ? FlutterFlowTheme.of(context)
                                                  .error
                                              : FlutterFlowTheme.of(context)
                                                  .success,
                                          icon: Icon(
                                            Icons.access_time,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            size: 14.0,
                                          ),
                                          time: widget.daysLeft,
                                          lable: 'days lef',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 10.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                          'My_investment_WithdrawCopy',
                                          queryParams: {
                                            'name': serializeParam(
                                              widget.name,
                                              ParamType.String,
                                            ),
                                            'price': serializeParam(
                                              widget.price,
                                              ParamType.String,
                                            ),
                                            'accruedInterest': serializeParam(
                                              widget.accruedInterest,
                                              ParamType.String,
                                            ),
                                            'maxWithdraw': serializeParam(
                                              widget.maxWithdraw,
                                              ParamType.String,
                                            ),
                                            'availableCash': serializeParam(
                                              widget.availableCash,
                                              ParamType.String,
                                            ),
                                            'totalWithdraw': serializeParam(
                                              widget.totalWithdraw,
                                              ParamType.String,
                                            ),
                                            'availableBonus': serializeParam(
                                              widget.availableBonus,
                                              ParamType.String,
                                            ),
                                            'dailyBonusWithdraw':
                                                serializeParam(
                                              widget.dailyBonusWithdrawLimit,
                                              ParamType.String,
                                            ),
                                            'idHistory': serializeParam(
                                              widget.idHistory,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                        );

                                        Navigator.pop(context);
                                      },
                                      text: 'Withdraw',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary1,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .neutrals2,
                                              fontSize: 14.0,
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
                                  ),
                                  if ((widget.availableCash ==
                                          FFAppState().zeroValue) &&
                                      (widget.daysLeft ==
                                          FFAppState().zeroValue))
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Renewals',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary1,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .neutrals2,
                                              fontSize: 14.0,
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
                                  if (widget.timeRange == 'unlimited')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: getJsonField(
                                                  FFAppState().responseProfile,
                                                  r'''$.data.kyc''',
                                                ) !=
                                                'yes'
                                            ? null
                                            : () async {
                                                _model.responseWithdraw =
                                                    await MyInvestmentGroup
                                                        .withdrawCashOriginCall
                                                        .call(
                                                  id: widget.idHistory,
                                                  accessToken:
                                                      FFAppState().accessToken,
                                                );
                                                if ((_model.responseWithdraw
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.responseWallet =
                                                      await MyInvestmentGroup
                                                          .aPIGetWalletCall
                                                          .call(
                                                    accessToken: FFAppState()
                                                        .accessToken,
                                                  );
                                                  if ((_model.responseWallet
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      FFAppState()
                                                              .walletResponse =
                                                          (_model.responseWallet
                                                                  ?.jsonBody ??
                                                              '');
                                                    });
                                                  }
                                                  _model.responseInventory =
                                                      await MyInvestmentGroup
                                                          .getInventoryCall
                                                          .call(
                                                    accessToken: FFAppState()
                                                        .accessToken,
                                                  );
                                                  if ((_model.responseInventory
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      FFAppState()
                                                              .responseInterestDaily =
                                                          (_model.responseInventory
                                                                  ?.jsonBody ??
                                                              '');
                                                    });
                                                  }
                                                  _model.responseActivity =
                                                      await MyInvestmentGroup
                                                          .getActivitiesCall
                                                          .call(
                                                    accessToken: FFAppState()
                                                        .accessToken,
                                                  );
                                                  if ((_model.responseActivity
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      FFAppState()
                                                              .responseActivity =
                                                          (_model.responseActivity
                                                                  ?.jsonBody ??
                                                              '');
                                                    });
                                                  }
                                                  Navigator.pop(context);
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child:
                                                            ModalWithdrawCashOriginSuccessWidget(
                                                          name: widget.name,
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                } else {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child:
                                                            ModalWithdrawCashOgirinFailureWidget(
                                                          name: widget.name,
                                                          error: getJsonField(
                                                            (_model.responseWithdraw
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.error.message''',
                                                          ).toString(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                }

                                                setState(() {});
                                              },
                                        text: 'Withdraw cash origin',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 48.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle2
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2Family,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .neutrals2,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .subtitle2Family),
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(90.0),
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
