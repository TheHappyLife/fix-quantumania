import '/components/card_info_statistics_text/card_info_statistics_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_info_statistics_image_model.dart';
export 'card_info_statistics_image_model.dart';

class CardInfoStatisticsImageWidget extends StatefulWidget {
  const CardInfoStatisticsImageWidget({
    Key? key,
    this.title,
    this.meta,
    this.image,
  }) : super(key: key);

  final String? title;
  final String? meta;
  final String? image;

  @override
  _CardInfoStatisticsImageWidgetState createState() =>
      _CardInfoStatisticsImageWidgetState();
}

class _CardInfoStatisticsImageWidgetState
    extends State<CardInfoStatisticsImageWidget> {
  late CardInfoStatisticsImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardInfoStatisticsImageModel());

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
        color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0x00FFFFFF),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.cardInfoStatisticsTextModel,
                    updateCallback: () => setState(() {}),
                    child: CardInfoStatisticsTextWidget(
                      title: widget.title,
                      meta: widget.meta,
                    ),
                  ),
                ),
                Image.network(
                  widget.image!,
                  width: 75.0,
                  height: 75.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
