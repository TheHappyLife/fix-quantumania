import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'investment_pack_item4_model.dart';
export 'investment_pack_item4_model.dart';

class InvestmentPackItem4Widget extends StatefulWidget {
  const InvestmentPackItem4Widget({
    Key? key,
    this.value,
    this.currency,
    this.time,
    String? prefix,
  })  : this.prefix = prefix ?? ' ',
        super(key: key);

  final String? value;
  final String? currency;
  final String? time;
  final String prefix;

  @override
  _InvestmentPackItem4WidgetState createState() =>
      _InvestmentPackItem4WidgetState();
}

class _InvestmentPackItem4WidgetState extends State<InvestmentPackItem4Widget> {
  late InvestmentPackItem4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvestmentPackItem4Model());

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
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GradientText(
            widget.currency!,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: FlutterFlowTheme.of(context).title1Family,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  useGoogleFonts: GoogleFonts.asMap()
                      .containsKey(FlutterFlowTheme.of(context).title1Family),
                  lineHeight: 1.6,
                ),
            colors: [Color(0xFF2378B7), Color(0xFF04D2C6)],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
            child: GradientText(
              widget.value!,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: FlutterFlowTheme.of(context).title1Family,
                    color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                    fontSize: 24.0,
                    useGoogleFonts: GoogleFonts.asMap()
                        .containsKey(FlutterFlowTheme.of(context).title1Family),
                    lineHeight: 1.6,
                  ),
              colors: [Color(0xFF2378B7), Color(0xFF04D2C6)],
              gradientDirection: GradientDirection.ltr,
              gradientType: GradientType.linear,
            ),
          ),
          GradientText(
            widget.prefix,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: FlutterFlowTheme.of(context).title1Family,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  useGoogleFonts: GoogleFonts.asMap()
                      .containsKey(FlutterFlowTheme.of(context).title1Family),
                  lineHeight: 1.6,
                ),
            colors: [Color(0xFF2378B7), Color(0xFF04D2C6)],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
          Text(
            widget.time!,
            style: FlutterFlowTheme.of(context).bodyText2.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText2Family),
                  lineHeight: 1.6,
                ),
          ),
        ],
      ),
    );
  }
}
