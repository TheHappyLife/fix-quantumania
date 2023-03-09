import '/backend/backend.dart';
import '/components/rank_f/rank_f_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rank_f_navi_model.dart';
export 'rank_f_navi_model.dart';

class RankFNaviWidget extends StatefulWidget {
  const RankFNaviWidget({Key? key}) : super(key: key);

  @override
  _RankFNaviWidgetState createState() => _RankFNaviWidgetState();
}

class _RankFNaviWidgetState extends State<RankFNaviWidget> {
  late RankFNaviModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RankFNaviModel());

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
        color: FlutterFlowTheme.of(context).neutrals2,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StreamBuilder<List<ListRankRecord>>(
              stream: queryListRankRecord(
                queryBuilder: (listRankRecord) =>
                    listRankRecord.orderBy('item'),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SpinKitFadingCircle(
                        color: FlutterFlowTheme.of(context).primary1,
                        size: 50.0,
                      ),
                    ),
                  );
                }
                List<ListRankRecord> wrapListRankRecordList = snapshot.data!;
                return Wrap(
                  spacing: 8.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children:
                      List.generate(wrapListRankRecordList.length, (wrapIndex) {
                    final wrapListRankRecord =
                        wrapListRankRecordList[wrapIndex];
                    return InkWell(
                      onTap: () async {
                        FFAppState().update(() {
                          FFAppState().FShow =
                              wrapListRankRecord.item!.toString();
                        });
                      },
                      child: RankFWidget(
                        key: Key(
                            'Keyq44_${wrapIndex}_of_${wrapListRankRecordList.length}'),
                        label: 'F${wrapListRankRecord.item?.toString()}',
                        labelColor: FlutterFlowTheme.of(context).neutrals8,
                        boderColor: FlutterFlowTheme.of(context).border1,
                        bgColor: Color(0x00000000),
                      ),
                    );
                  }),
                );
              },
            ),
            Text(
              FFAppState().FShow,
              style: FlutterFlowTheme.of(context).subtitle1.override(
                    fontFamily: FlutterFlowTheme.of(context).subtitle1Family,
                    color: FlutterFlowTheme.of(context).neutrals8,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).subtitle1Family),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
