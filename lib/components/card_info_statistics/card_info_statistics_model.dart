import '/components/card_info_statistics_text/card_info_statistics_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CardInfoStatisticsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Card_Info_Statistics_Text component.
  late CardInfoStatisticsTextModel cardInfoStatisticsTextModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cardInfoStatisticsTextModel =
        createModel(context, () => CardInfoStatisticsTextModel());
  }

  void dispose() {
    cardInfoStatisticsTextModel.dispose();
  }

  /// Additional helper methods are added here.

}
