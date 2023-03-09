import '/components/item_rounded_1/item_rounded1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aff_navigation_model.dart';
export 'aff_navigation_model.dart';

class AffNavigationWidget extends StatefulWidget {
  const AffNavigationWidget({
    Key? key,
    this.current,
  }) : super(key: key);

  final String? current;

  @override
  _AffNavigationWidgetState createState() => _AffNavigationWidgetState();
}

class _AffNavigationWidgetState extends State<AffNavigationWidget> {
  late AffNavigationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AffNavigationModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Divider(
            height: 1.0,
            color: FlutterFlowTheme.of(context).border1,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 2.8,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'Affiliate-Overview',
                            queryParams: {
                              'current': serializeParam(
                                FFAppState().currentAffOverview,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: wrapWithModel(
                          model: _model.itemRounded1Model1,
                          updateCallback: () => setState(() {}),
                          child: ItemRounded1Widget(
                            label: 'Overview',
                            borderColor: widget.current ==
                                    FFAppState().currentAffOverview
                                ? FlutterFlowTheme.of(context).primary1
                                : FlutterFlowTheme.of(context).border1,
                            bgColor: widget.current ==
                                    FFAppState().currentAffOverview
                                ? Color(0x6000FFFF)
                                : FlutterFlowTheme.of(context).neutrals8,
                            labelColor: widget.current ==
                                    FFAppState().currentAffOverview
                                ? FlutterFlowTheme.of(context).primary1
                                : FlutterFlowTheme.of(context).neutrals8,
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.itemRounded1Model2,
                        updateCallback: () => setState(() {}),
                        child: ItemRounded1Widget(
                          label: 'Sub Affiliate',
                          borderColor:
                              widget.current == FFAppState().currentSubAff
                                  ? FlutterFlowTheme.of(context).primary1
                                  : FlutterFlowTheme.of(context).border1,
                          bgColor: widget.current == FFAppState().currentSubAff
                              ? FlutterFlowTheme.of(context).backgroundPrimary
                              : FlutterFlowTheme.of(context).neutrals8,
                          labelColor:
                              widget.current == FFAppState().currentSubAff
                                  ? FlutterFlowTheme.of(context).primary1
                                  : FlutterFlowTheme.of(context).neutrals8,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.itemRounded1Model3,
                        updateCallback: () => setState(() {}),
                        child: ItemRounded1Widget(
                          label: 'Campaign',
                          borderColor:
                              widget.current == FFAppState().currentAffCampaign
                                  ? FlutterFlowTheme.of(context).primary1
                                  : FlutterFlowTheme.of(context).border1,
                          bgColor: widget.current ==
                                  FFAppState().currentAffCampaign
                              ? FlutterFlowTheme.of(context).backgroundPrimary
                              : FlutterFlowTheme.of(context).neutrals8,
                          labelColor:
                              widget.current == FFAppState().currentAffCampaign
                                  ? FlutterFlowTheme.of(context).primary1
                                  : FlutterFlowTheme.of(context).neutrals8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
