import '/components/header_nav_back/header_nav_back_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
import '/components/transaction_detail_state_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transaction_invest_detail_model.dart';
export 'transaction_invest_detail_model.dart';

class TransactionInvestDetailWidget extends StatefulWidget {
  const TransactionInvestDetailWidget({Key? key}) : super(key: key);

  @override
  _TransactionInvestDetailWidgetState createState() =>
      _TransactionInvestDetailWidgetState();
}

class _TransactionInvestDetailWidgetState
    extends State<TransactionInvestDetailWidget> {
  late TransactionInvestDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionInvestDetailModel());

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
                                wrapWithModel(
                                  model: _model.headerNavBackModel,
                                  updateCallback: () => setState(() {}),
                                  child: HeaderNavBackWidget(
                                    back: () async {},
                                  ),
                                ),
                                Text(
                                  'Transaction detail',
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F7FC),
                          ),
                          child: wrapWithModel(
                            model: _model.transactionDetailStateModel,
                            updateCallback: () => setState(() {}),
                            child: TransactionDetailStateWidget(
                              title: 'Investment Pack 1',
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-update-5xqg8z/assets/9gd7rc9jl73t/cash-withdrawal.gif',
                              date: '28 Jun 2022',
                              type: 'Withdraw',
                              loadingWallet: false,
                              displayDes: false,
                              state: 'success',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                                    0.0, 0.0, 0.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.totalGroupItemModel1,
                                      updateCallback: () => setState(() {}),
                                      child: TotalGroupItemWidget(
                                        title: 'ID',
                                        subTitle: 'B3T4AF45',
                                        colorTitle: FlutterFlowTheme.of(context)
                                            .aliasGrayscaleLabel,
                                        colorSubTitle:
                                            FlutterFlowTheme.of(context)
                                                .aliasGrayscaleBody,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.totalGroupItemModel2,
                                      updateCallback: () => setState(() {}),
                                      child: TotalGroupItemWidget(
                                        title: 'Total',
                                        subTitle: '1000 USDT',
                                        colorTitle: FlutterFlowTheme.of(context)
                                            .aliasGrayscaleLabel,
                                        colorSubTitle: Color(0xFF4E4B66),
                                      ),
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
