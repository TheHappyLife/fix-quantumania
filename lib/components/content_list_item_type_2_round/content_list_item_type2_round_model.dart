import '/components/round_status/round_status_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContentListItemType2RoundModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Round_Status component.
  late RoundStatusModel roundStatusModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    roundStatusModel = createModel(context, () => RoundStatusModel());
  }

  void dispose() {
    roundStatusModel.dispose();
  }

  /// Additional helper methods are added here.

}
