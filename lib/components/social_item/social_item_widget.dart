import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'social_item_model.dart';
export 'social_item_model.dart';

class SocialItemWidget extends StatefulWidget {
  const SocialItemWidget({
    Key? key,
    this.image,
    this.text,
  }) : super(key: key);

  final String? image;
  final String? text;

  @override
  _SocialItemWidgetState createState() => _SocialItemWidgetState();
}

class _SocialItemWidgetState extends State<SocialItemWidget> {
  late SocialItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialItemModel());

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
      width: 48.0,
      height: 48.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                valueOrDefault<String>(
                  widget.image,
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/bf7ilwcuavkw/Facebook.png',
                ),
                width: 28.0,
                height: 28.0,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.text,
                'Facebook',
              ),
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                    color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText2Family),
                    lineHeight: 1.7,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
