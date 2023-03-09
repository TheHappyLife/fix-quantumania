import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'investment_pack_item_inner1_top_icon_model.dart';
export 'investment_pack_item_inner1_top_icon_model.dart';

class InvestmentPackItemInner1TopIconWidget extends StatefulWidget {
  const InvestmentPackItemInner1TopIconWidget({
    Key? key,
    this.image,
    this.title,
    this.subTitle,
    this.badgeColor,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? subTitle;
  final Color? badgeColor;

  @override
  _InvestmentPackItemInner1TopIconWidgetState createState() =>
      _InvestmentPackItemInner1TopIconWidgetState();
}

class _InvestmentPackItemInner1TopIconWidgetState
    extends State<InvestmentPackItemInner1TopIconWidget> {
  late InvestmentPackItemInner1TopIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvestmentPackItemInner1TopIconModel());

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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context)
                                  .aliasGrayscaleLabel,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                              lineHeight: 1.66,
                            ),
                      ),
                      GradientText(
                        widget.subTitle!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).title1Family,
                              color: FlutterFlowTheme.of(context)
                                  .aliasGrayscaleHeaderWeak,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title1Family),
                              lineHeight: 1.6,
                            ),
                        colors: [Color(0xFF2378B7), Color(0xFF04D2C6)],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.ios_share,
            color: FlutterFlowTheme.of(context).primary1,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
