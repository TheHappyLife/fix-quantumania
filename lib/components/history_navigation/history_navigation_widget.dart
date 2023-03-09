import '/components/item_rounded_1/item_rounded1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'history_navigation_model.dart';
export 'history_navigation_model.dart';

class HistoryNavigationWidget extends StatefulWidget {
  const HistoryNavigationWidget({
    Key? key,
    this.current,
  }) : super(key: key);

  final String? current;

  @override
  _HistoryNavigationWidgetState createState() =>
      _HistoryNavigationWidgetState();
}

class _HistoryNavigationWidgetState extends State<HistoryNavigationWidget> {
  late HistoryNavigationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoryNavigationModel());

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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(),
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 3.8,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    wrapWithModel(
                      model: _model.itemRounded1Model1,
                      updateCallback: () => setState(() {}),
                      child: ItemRounded1Widget(
                        label: 'Gem',
                        borderColor:
                            widget.current == FFAppState().currentHistoryGem
                                ? FlutterFlowTheme.of(context).primary1
                                : FlutterFlowTheme.of(context).border1,
                        bgColor:
                            widget.current == FFAppState().currentHistoryGem
                                ? FlutterFlowTheme.of(context).backgroundPrimary
                                : FlutterFlowTheme.of(context).neutrals8,
                        labelColor:
                            widget.current == FFAppState().currentHistoryGem
                                ? FlutterFlowTheme.of(context).primary1
                                : FlutterFlowTheme.of(context).neutrals8,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemRounded1Model2,
                      updateCallback: () => setState(() {}),
                      child: ItemRounded1Widget(
                        label: 'Balance',
                        borderColor:
                            widget.current == FFAppState().currentHistoryBalance
                                ? FlutterFlowTheme.of(context).primary1
                                : FlutterFlowTheme.of(context).border1,
                        bgColor:
                            widget.current == FFAppState().currentHistoryBalance
                                ? FlutterFlowTheme.of(context).backgroundPrimary
                                : FlutterFlowTheme.of(context).neutrals8,
                        labelColor:
                            widget.current == FFAppState().currentHistoryBalance
                                ? FlutterFlowTheme.of(context).primary1
                                : FlutterFlowTheme.of(context).neutrals8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
