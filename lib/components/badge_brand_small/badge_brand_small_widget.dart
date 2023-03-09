import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'badge_brand_small_model.dart';
export 'badge_brand_small_model.dart';

class BadgeBrandSmallWidget extends StatefulWidget {
  const BadgeBrandSmallWidget({
    Key? key,
    this.image,
    this.label,
    this.colorLabel,
    this.sizeImage,
  }) : super(key: key);

  final String? image;
  final String? label;
  final Color? colorLabel;
  final int? sizeImage;

  @override
  _BadgeBrandSmallWidgetState createState() => _BadgeBrandSmallWidgetState();
}

class _BadgeBrandSmallWidgetState extends State<BadgeBrandSmallWidget> {
  late BadgeBrandSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BadgeBrandSmallModel());

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
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: Image.network(
              valueOrDefault<String>(
                widget.image,
                'https://firebasestorage.googleapis.com/v0/b/huntgem-tuyen-ca7a4.appspot.com/o/images%2Fscoin-linear.png?alt=media&token=f460ccb5-87b2-4df4-a083-4613e4d01181',
              ),
              width: valueOrDefault<double>(
                widget.sizeImage?.toDouble(),
                16.0,
              ),
              height: valueOrDefault<double>(
                widget.sizeImage?.toDouble(),
                16.0,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.label,
              'Label',
            ).maybeHandleOverflow(
              maxChars: 20,
              replacement: '…',
            ),
            textAlign: TextAlign.end,
            maxLines: 1,
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                  color: widget.colorLabel,
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText1Family),
                  lineHeight: 1.7,
                ),
          ),
        ],
      ),
    );
  }
}
