import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wrap_authen_model.dart';
export 'wrap_authen_model.dart';

class WrapAuthenWidget extends StatefulWidget {
  const WrapAuthenWidget({
    Key? key,
    this.image,
    this.title,
    this.subTitle,
    this.imageCheck,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? subTitle;
  final String? imageCheck;

  @override
  _WrapAuthenWidgetState createState() => _WrapAuthenWidgetState();
}

class _WrapAuthenWidgetState extends State<WrapAuthenWidget> {
  late WrapAuthenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WrapAuthenModel());

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
      child: Wrap(
        spacing: 0.0,
        runSpacing: 24.0,
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.start,
        verticalDirection: VerticalDirection.down,
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Image.network(
                  widget.image!,
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          widget.title!,
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                color: FlutterFlowTheme.of(context).neutrals4,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                                lineHeight: 1.6,
                              ),
                        ),
                        if (widget.imageCheck != null &&
                            widget.imageCheck != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                widget.imageCheck,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/iye6k1gqi8ef/Check_gray.png',
                              ),
                              width: 16.0,
                              height: 16.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: AutoSizeText(
                        widget.subTitle!,
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Josefin Sans',
                              color: FlutterFlowTheme.of(context).neutrals4,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                              lineHeight: 1.6,
                            ),
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
