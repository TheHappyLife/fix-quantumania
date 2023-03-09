import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_data1_model.dart';
export 'item_data1_model.dart';

class ItemData1Widget extends StatefulWidget {
  const ItemData1Widget({
    Key? key,
    this.title,
    this.subTitle,
    this.image,
  }) : super(key: key);

  final String? title;
  final String? subTitle;
  final String? image;

  @override
  _ItemData1WidgetState createState() => _ItemData1WidgetState();
}

class _ItemData1WidgetState extends State<ItemData1Widget> {
  late ItemData1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemData1Model());

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
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x4D2378B7), Color(0x4D04D2C6)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      widget.image!,
                      width: 20.0,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                        fontFamily: 'Josefin Sans',
                        color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).subtitle2Family),
                        lineHeight: 1.5,
                      ),
                ),
                Text(
                  widget.subTitle!,
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Josefin Sans',
                        color: FlutterFlowTheme.of(context).aliasGrayscaleLabel,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText2Family),
                        lineHeight: 1.5,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
