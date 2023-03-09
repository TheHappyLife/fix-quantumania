import '/components/investment_pack_item_4/investment_pack_item4_widget.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
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
import 'modal_buy_invest_model.dart';
export 'modal_buy_invest_model.dart';

class ModalBuyInvestWidget extends StatefulWidget {
  const ModalBuyInvestWidget({
    Key? key,
    this.name,
    this.timeRange,
    this.price,
    this.currency,
    this.interestDailyPercent,
    this.totalRevenue,
    this.idPackage,
    this.typeInterest,
  }) : super(key: key);

  final String? name;
  final String? timeRange;
  final int? price;
  final String? currency;
  final String? interestDailyPercent;
  final String? totalRevenue;
  final int? idPackage;
  final String? typeInterest;

  @override
  _ModalBuyInvestWidgetState createState() => _ModalBuyInvestWidgetState();
}

class _ModalBuyInvestWidgetState extends State<ModalBuyInvestWidget> {
  late ModalBuyInvestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalBuyInvestModel());

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
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 36.0, 16.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 99.0,
                      borderWidth: 0.0,
                      buttonSize: 32.0,
                      fillColor:
                          FlutterFlowTheme.of(context).aliasGrayscaleInput,
                      icon: FaIcon(
                        FontAwesomeIcons.angleLeft,
                        color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                        size: 16.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Text(
                  widget.name!,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        fontSize: 28.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: wrapWithModel(
                model: _model.investmentPackItemInner1TopBadgeModel,
                updateCallback: () => setState(() {}),
                child: InvestmentPackItemInner1TopBadgeWidget(
                  title: '',
                  subTitle: widget.price?.toString(),
                  badge: functions.bagdeTimePaymentInterest(widget.timeRange!),
                  currency: '\$',
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                wrapWithModel(
                  model: _model.investmentPackItem4Model1,
                  updateCallback: () => setState(() {}),
                  child: InvestmentPackItem4Widget(
                    value: functions.calculateInterestDaily(
                        widget.price!, widget.interestDailyPercent!),
                    currency: '\$',
                    time: '/ day',
                  ),
                ),
                wrapWithModel(
                  model: _model.investmentPackItem4Model2,
                  updateCallback: () => setState(() {}),
                  child: InvestmentPackItem4Widget(
                    value: widget.interestDailyPercent,
                    currency: '',
                    time: '/ day',
                    prefix: '%',
                  ),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
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
                                wrapWithModel(
                                  model: _model.totalGroupItemModel1,
                                  updateCallback: () => setState(() {}),
                                  child: TotalGroupItemWidget(
                                    title: 'Total revenue',
                                    subTitle: functions
                                        .replaceComma(widget.totalRevenue),
                                    colorTitle: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleBody,
                                    colorSubTitle: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleBody,
                                    subfix: '\$',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.totalGroupItemModel2,
                                  updateCallback: () => setState(() {}),
                                  child: TotalGroupItemWidget(
                                    title: 'Interest payment',
                                    subTitle: functions
                                        .timeInterestPayment(widget.timeRange!),
                                    colorTitle: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleBody,
                                    colorSubTitle: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleBody,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.totalGroupItemModel3,
                                  updateCallback: () => setState(() {}),
                                  child: TotalGroupItemWidget(
                                    title: 'Principal withdrawal time',
                                    subTitle:
                                        functions.possibleWithdrawCashOrigin(
                                            widget.timeRange!),
                                    colorTitle: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleBody,
                                    colorSubTitle: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleBody,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 8.0, 0.0),
                                child: Icon(
                                  Icons.info_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .aliasGrayscaleLabel,
                                  size: 16.0,
                                ),
                              ),
                              Text(
                                'Profit can be withdrawn daily',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: FlutterFlowTheme.of(context)
                                          .aliasGrayscaleBody,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ],
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'My_investment_payment',
                                queryParams: {
                                  'name': serializeParam(
                                    widget.name,
                                    ParamType.String,
                                  ),
                                  'price': serializeParam(
                                    widget.price,
                                    ParamType.int,
                                  ),
                                  'timeRange': serializeParam(
                                    widget.timeRange,
                                    ParamType.String,
                                  ),
                                  'interestRate': serializeParam(
                                    widget.interestDailyPercent,
                                    ParamType.String,
                                  ),
                                  'totalRevenue': serializeParam(
                                    widget.totalRevenue,
                                    ParamType.String,
                                  ),
                                  'idPackage': serializeParam(
                                    widget.idPackage,
                                    ParamType.int,
                                  ),
                                  'type': serializeParam(
                                    widget.typeInterest,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );

                              Navigator.pop(context);
                            },
                            text: 'Invest Now',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary1,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText2Family,
                                    color: FlutterFlowTheme.of(context)
                                        .aliasGrayscaleBody,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText2Family),
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
    );
  }
}
