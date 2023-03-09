import '/components/card_info_statistics_text/card_info_statistics_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_info_statistics_model.dart';
export 'card_info_statistics_model.dart';

class CardInfoStatisticsWidget extends StatefulWidget {
  const CardInfoStatisticsWidget({
    Key? key,
    this.title,
    this.meta,
  }) : super(key: key);

  final String? title;
  final String? meta;

  @override
  _CardInfoStatisticsWidgetState createState() =>
      _CardInfoStatisticsWidgetState();
}

class _CardInfoStatisticsWidgetState extends State<CardInfoStatisticsWidget> {
  late CardInfoStatisticsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardInfoStatisticsModel());

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
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).neutrals3,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
