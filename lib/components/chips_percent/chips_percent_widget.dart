import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chips_percent_model.dart';
export 'chips_percent_model.dart';

class ChipsPercentWidget extends StatefulWidget {
  const ChipsPercentWidget({Key? key}) : super(key: key);

  @override
  _ChipsPercentWidgetState createState() => _ChipsPercentWidgetState();
}

class _ChipsPercentWidgetState extends State<ChipsPercentWidget> {
  late ChipsPercentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChipsPercentModel());

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

    return FlutterFlowChoiceChips(
      initiallySelected: ['25%'],
      options: [
        ChipData('25%'),
        ChipData('50%'),
        ChipData('75%'),
        ChipData('100%')
      ],
      onChanged: (val) => setState(() => _model.choiceChipsValue = val?.first),
      selectedChipStyle: ChipStyle(
        backgroundColor: Color(0x00000000),
        textStyle: TextStyle(
          color: FlutterFlowTheme.of(context).neutrals1,
          fontSize: 12.0,
        ),
        iconColor: FlutterFlowTheme.of(context).neutrals8,
        iconSize: 18.0,
        labelPadding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        elevation: 0.0,
      ),
      unselectedChipStyle: ChipStyle(
        backgroundColor: FlutterFlowTheme.of(context).neutrals8,
        textStyle: TextStyle(
          fontFamily: 'Josefin Sans',
          color: FlutterFlowTheme.of(context).neutrals1,
          fontSize: 12.0,
        ),
        iconColor: FlutterFlowTheme.of(context).neutrals8,
        iconSize: 18.0,
        labelPadding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        elevation: 0.0,
      ),
      chipSpacing: 8.0,
      multiselect: false,
      initialized: _model.choiceChipsValue != null,
      alignment: WrapAlignment.start,
    );
  }
}
