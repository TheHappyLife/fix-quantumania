import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'investment_pack_item3_model.dart';
export 'investment_pack_item3_model.dart';

class InvestmentPackItem3Widget extends StatefulWidget {
  const InvestmentPackItem3Widget({
    Key? key,
    this.image,
    this.title,
    this.subTitle,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? subTitle;

  @override
  _InvestmentPackItem3WidgetState createState() =>
      _InvestmentPackItem3WidgetState();
}

class _InvestmentPackItem3WidgetState extends State<InvestmentPackItem3Widget> {
  late InvestmentPackItem3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvestmentPackItem3Model());

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
            child: SvgPicture.network(
              widget.image!,
              width: 40.0,
              height: 40.0,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
            child: Text(
              widget.title!,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                    color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText2Family),
                    lineHeight: 1.5,
                  ),
            ),
          ),
          Text(
            widget.subTitle!,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).subtitle2.override(
                  fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                  color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).subtitle2Family),
                  lineHeight: 1.5,
                ),
          ),
        ],
      ),
    );
  }
}
