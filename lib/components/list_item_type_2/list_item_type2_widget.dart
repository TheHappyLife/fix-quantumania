import '/components/content_list_item_type_2/content_list_item_type2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_item_type2_model.dart';
export 'list_item_type2_model.dart';

class ListItemType2Widget extends StatefulWidget {
  const ListItemType2Widget({
    Key? key,
    this.image,
    this.title,
    this.text2,
    this.text3,
    this.text4,
    this.colorText2,
    this.colorText3,
    this.colorText4,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? text2;
  final String? text3;
  final String? text4;
  final Color? colorText2;
  final Color? colorText3;
  final Color? colorText4;

  @override
  _ListItemType2WidgetState createState() => _ListItemType2WidgetState();
}

class _ListItemType2WidgetState extends State<ListItemType2Widget> {
  late ListItemType2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListItemType2Model());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            decoration: BoxDecoration(
              color: Color(0x00FFFFFF),
              border: Border.all(
                color: Color(0x00FFFFFF),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            widget.image!,
                            width: 48.0,
                            height: 48.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.contentListItemType2Model,
                          updateCallback: () => setState(() {}),
                          child: ContentListItemType2Widget(
                            title: widget.title,
                            text2: widget.text2,
                            text3: widget.text3,
                            text4: widget.text4,
                            colorText2: widget.colorText2,
                            colorText3: widget.colorText3,
                            colorText4: widget.colorText4,
                            colorTtile: FlutterFlowTheme.of(context).neutrals8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 1.0,
            color: FlutterFlowTheme.of(context).border1,
          ),
        ],
      ),
    );
  }
}
