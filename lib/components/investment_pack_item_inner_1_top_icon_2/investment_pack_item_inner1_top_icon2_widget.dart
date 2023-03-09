import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'investment_pack_item_inner1_top_icon2_model.dart';
export 'investment_pack_item_inner1_top_icon2_model.dart';

class InvestmentPackItemInner1TopIcon2Widget extends StatefulWidget {
  const InvestmentPackItemInner1TopIcon2Widget({
    Key? key,
    this.subTitle,
    this.badgeColor,
    this.badgeText,
  }) : super(key: key);

  final String? subTitle;
  final Color? badgeColor;
  final String? badgeText;

  @override
  _InvestmentPackItemInner1TopIcon2WidgetState createState() =>
      _InvestmentPackItemInner1TopIcon2WidgetState();
}

class _InvestmentPackItemInner1TopIcon2WidgetState
    extends State<InvestmentPackItemInner1TopIcon2Widget> {
  late InvestmentPackItemInner1TopIcon2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => InvestmentPackItemInner1TopIcon2Model());

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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                color: widget.badgeColor,
                                borderRadius: BorderRadius.circular(99.0),
                              ),
                            ),
                          ),
                          Text(
                            widget.badgeText!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText2Family,
                                  color: widget.badgeColor,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText2Family),
                                  lineHeight: 1.6,
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
