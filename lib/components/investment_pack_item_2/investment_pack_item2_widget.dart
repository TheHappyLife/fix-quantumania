import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'investment_pack_item2_model.dart';
export 'investment_pack_item2_model.dart';

class InvestmentPackItem2Widget extends StatefulWidget {
  const InvestmentPackItem2Widget({
    Key? key,
    this.image,
    this.title,
    this.subTitle,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? subTitle;

  @override
  _InvestmentPackItem2WidgetState createState() =>
      _InvestmentPackItem2WidgetState();
}

class _InvestmentPackItem2WidgetState extends State<InvestmentPackItem2Widget> {
  late InvestmentPackItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvestmentPackItem2Model());

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

    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.investmentPackItemInner1TopBadgeModel,
                updateCallback: () => setState(() {}),
                child: InvestmentPackItemInner1TopBadgeWidget(
                  title: widget.title,
                  subTitle: widget.subTitle,
                  badge: '',
                  currency: 'Hpoint',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
