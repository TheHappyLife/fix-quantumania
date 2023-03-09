import '/components/head_page_text/head_page_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'head_page_model.dart';
export 'head_page_model.dart';

class HeadPageWidget extends StatefulWidget {
  const HeadPageWidget({
    Key? key,
    this.image,
    this.title,
    this.subTitle,
    this.colorTitle,
    this.colorSubTitle,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? subTitle;
  final Color? colorTitle;
  final Color? colorSubTitle;

  @override
  _HeadPageWidgetState createState() => _HeadPageWidgetState();
}

class _HeadPageWidgetState extends State<HeadPageWidget> {
  late HeadPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadPageModel());

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
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 48.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 4.0),
              child: Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Image.network(
                  widget.image!,
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            wrapWithModel(
              model: _model.headPageTextModel,
              updateCallback: () => setState(() {}),
              child: HeadPageTextWidget(
                title: widget.title,
                subTitle: widget.subTitle,
                colorTitle: valueOrDefault<Color>(
                  widget.colorTitle,
                  FlutterFlowTheme.of(context).neutrals8,
                ),
                colorSubTitle: valueOrDefault<Color>(
                  widget.colorSubTitle,
                  FlutterFlowTheme.of(context).neutrals4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
