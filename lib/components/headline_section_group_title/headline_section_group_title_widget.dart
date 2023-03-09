import '/components/headline_section_title/headline_section_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'headline_section_group_title_model.dart';
export 'headline_section_group_title_model.dart';

class HeadlineSectionGroupTitleWidget extends StatefulWidget {
  const HeadlineSectionGroupTitleWidget({
    Key? key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  final String? title;
  final String? subTitle;

  @override
  _HeadlineSectionGroupTitleWidgetState createState() =>
      _HeadlineSectionGroupTitleWidgetState();
}

class _HeadlineSectionGroupTitleWidgetState
    extends State<HeadlineSectionGroupTitleWidget> {
  late HeadlineSectionGroupTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadlineSectionGroupTitleModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.headlineSectionTitleModel,
                    updateCallback: () => setState(() {}),
                    child: HeadlineSectionTitleWidget(
                      title: widget.title,
                      subTitle: widget.subTitle,
                    ),
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
