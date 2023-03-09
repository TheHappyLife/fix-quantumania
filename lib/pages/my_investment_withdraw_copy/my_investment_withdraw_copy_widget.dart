import '/backend/api_requests/api_calls.dart';
import '/components/investment_pack_item_inner_1_top/investment_pack_item_inner1_top_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/item_data_2/item_data2_widget.dart';
import '/components/modal_my_withdraw_success/modal_my_withdraw_success_widget.dart';
import '/components/total_noti_bottom/total_noti_bottom_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_investment_withdraw_copy_model.dart';
export 'my_investment_withdraw_copy_model.dart';

class MyInvestmentWithdrawCopyWidget extends StatefulWidget {
  const MyInvestmentWithdrawCopyWidget({
    Key? key,
    this.name,
    this.price,
    this.accruedInterest,
    this.maxWithdraw,
    this.availableCash,
    this.totalWithdraw,
    this.availableBonus,
    this.dailyBonusWithdraw,
    this.idHistory,
  }) : super(key: key);

  final String? name;
  final String? price;
  final String? accruedInterest;
  final String? maxWithdraw;
  final String? availableCash;
  final String? totalWithdraw;
  final String? availableBonus;
  final String? dailyBonusWithdraw;
  final int? idHistory;

  @override
  _MyInvestmentWithdrawCopyWidgetState createState() =>
      _MyInvestmentWithdrawCopyWidgetState();
}

class _MyInvestmentWithdrawCopyWidgetState
    extends State<MyInvestmentWithdrawCopyWidget> {
  late MyInvestmentWithdrawCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyInvestmentWithdrawCopyModel());

    _model.fieldAmountController ??= TextEditingController();
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
                                  'Withdraw',
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
                              16.0, 24.0, 16.0, 48.0),
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
                                                .investmentPackItemInner1TopModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                InvestmentPackItemInner1TopWidget(
                                              title: widget.name,
                                              subTitle: widget.price,
                                            ),
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
                                            runSpacing: 12.0,
                                            alignment:
                                                WrapAlignment.spaceBetween,
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
                                                    title: functions
                                                        .replaceComma(widget
                                                            .accruedInterest),
                                                    subTitle:
                                                        'Accrued interest',
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
                                                    bg: Color(0x1A66C56D),
                                                    title:
                                                        functions.replaceComma(
                                                            widget.maxWithdraw),
                                                    subTitle: 'Max withdraw',
                                                    icon: Icon(
                                                      Icons.attach_money,
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  model: _model.itemDataModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: ItemDataWidget(
                                                    bg: Color(0xFFFFF8E9),
                                                    title: functions
                                                        .replaceComma(widget
                                                            .availableCash),
                                                    subTitle: 'Available cash',
                                                    icon: Icon(
                                                      Icons.attach_money,
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  model: _model.itemDataModel3,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: ItemDataWidget(
                                                    bg: Color(0x1A66C56D),
                                                    title: functions
                                                        .replaceComma(widget
                                                            .totalWithdraw),
                                                    subTitle:
                                                        'Total withdrawal',
                                                    icon: Icon(
                                                      Icons.attach_money,
                                                      color: Color(0xFFEAAC30),
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
                                                  model: _model.itemDataModel4,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: ItemDataWidget(
                                                    bg: Color(0xFFFFF8E9),
                                                    title: functions
                                                        .replaceComma(widget
                                                            .availableBonus),
                                                    subTitle: 'Available bonus',
                                                    icon: Icon(
                                                      Icons.attach_money,
                                                      color: Color(0xFFEAAC30),
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
                                                  model: _model.itemDataModel5,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: ItemDataWidget(
                                                    bg: Color(0xFFEBECFE),
                                                    title: functions
                                                        .replaceComma(widget
                                                            .dailyBonusWithdraw),
                                                    subTitle:
                                                        'Daily bonus withdrawal limit',
                                                    icon: Icon(
                                                      Icons.attach_money,
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
                                  Wrap(
                                    spacing: 0.0,
                                    runSpacing: 8.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: TextFormField(
                                          controller:
                                              _model.fieldAmountController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.fieldAmountController',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              FFAppState().update(() {
                                                FFAppState()
                                                    .messageErrorWithdraw = '';
                                              });
                                            },
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Amount',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .aliasGrayscaleLabel,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family),
                                                  lineHeight: 1.5,
                                                ),
                                            hintStyle:
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
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family),
                                                      lineHeight: 1.5,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .aliasGrayscaleLine,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary1,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 12.0),
                                            suffixIcon: Icon(
                                              Icons.attach_money,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary1,
                                              size: 16.0,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .aliasGrayscaleBody,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1Family),
                                                lineHeight: 1.5,
                                              ),
                                          textAlign: TextAlign.start,
                                          keyboardType: TextInputType.number,
                                          validator: _model
                                              .fieldAmountControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Visibility(
                                        visible: responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model
                                                    .totalNotiBottomModel1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TotalNotiBottomWidget(
                                                  text:
                                                      'Profit withdrawal limit/day',
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  '\$ ',
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
                                                            .aliasGrayscaleBody,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    functions.replaceComma(
                                                        getJsonField(
                                                      FFAppState()
                                                          .responseInterestDaily,
                                                      r'''$.data[0].limit_withdraw_daily''',
                                                    ).toString()),
                                                    '0',
                                                  ),
                                                  textAlign: TextAlign.end,
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
                                                            .aliasGrayscaleBody,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: wrapWithModel(
                                              model:
                                                  _model.totalNotiBottomModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: TotalNotiBottomWidget(
                                                text:
                                                    'Profit withdrawal limit available',
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '\$ ',
                                                style:
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
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  functions.replaceComma(
                                                      widget.availableCash),
                                                  '0',
                                                ),
                                                textAlign: TextAlign.end,
                                                style:
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
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        FFAppState().messageErrorWithdraw,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ],
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
                                          onPressed: _model
                                                          .fieldAmountController
                                                          .text ==
                                                      null ||
                                                  _model.fieldAmountController
                                                          .text ==
                                                      ''
                                              ? null
                                              : () async {
                                                  if (_model.formKey
                                                              .currentState ==
                                                          null ||
                                                      !_model
                                                          .formKey.currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  _model.withdrawResponse =
                                                      await MyInvestmentGroup
                                                          .withdraWalletInternalCall
                                                          .call(
                                                    id: widget.idHistory,
                                                    amount: functions
                                                        .stringToNumber(_model
                                                            .fieldAmountController
                                                            .text),
                                                    ref: 'withdraw_interest',
                                                    accessToken: FFAppState()
                                                        .accessToken,
                                                    description:
                                                        'Withdraw interest from Investment',
                                                  );
                                                  if ((_model.withdrawResponse
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.responseInventory =
                                                        await MyInvestmentGroup
                                                            .getInventoryCall
                                                            .call(
                                                      accessToken: FFAppState()
                                                          .accessToken,
                                                    );
                                                    _model.responseWallet =
                                                        await MyInvestmentGroup
                                                            .aPIGetWalletCall
                                                            .call(
                                                      accessToken: FFAppState()
                                                          .accessToken,
                                                    );
                                                    _model.responseActivitiy =
                                                        await MyInvestmentGroup
                                                            .getActivitiesCall
                                                            .call(
                                                      accessToken: FFAppState()
                                                          .accessToken,
                                                    );
                                                    await actions
                                                        .updateAndFindDbLocal(
                                                      null,
                                                      null,
                                                      null,
                                                      (_model.responseActivitiy
                                                              ?.jsonBody ??
                                                          ''),
                                                      (_model.responseInventory
                                                              ?.jsonBody ??
                                                          ''),
                                                      null,
                                                      null,
                                                    );
                                                    setState(() {
                                                      FFAppState()
                                                              .walletResponse =
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
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child:
                                                              ModalMyWithdrawSuccessWidget(
                                                            name: widget.name,
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  } else {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .messageErrorWithdraw =
                                                          getJsonField(
                                                        (_model.withdrawResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.error.message''',
                                                      ).toString();
                                                    });
                                                  }

                                                  setState(() {});
                                                },
                                          text: 'Continue',
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
                                            disabledColor:
                                                FlutterFlowTheme.of(context)
                                                    .neutrals2,
                                            disabledTextColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
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
