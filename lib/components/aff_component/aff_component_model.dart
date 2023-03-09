import '/components/aff_congrats/aff_congrats_widget.dart';
import '/components/aff_statistic/aff_statistic_widget.dart';
import '/components/aff_statistic_update/aff_statistic_update_widget.dart';
import '/components/aff_sub_aff/aff_sub_aff_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AffComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Aff_congrats component.
  late AffCongratsModel affCongratsModel;
  // Model for aff_statistic-update component.
  late AffStatisticUpdateModel affStatisticUpdateModel;
  // Model for aff_statistic component.
  late AffStatisticModel affStatisticModel;
  // Model for Aff_Sub_aff component.
  late AffSubAffModel affSubAffModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    affCongratsModel = createModel(context, () => AffCongratsModel());
    affStatisticUpdateModel =
        createModel(context, () => AffStatisticUpdateModel());
    affStatisticModel = createModel(context, () => AffStatisticModel());
    affSubAffModel = createModel(context, () => AffSubAffModel());
  }

  void dispose() {
    affCongratsModel.dispose();
    affStatisticUpdateModel.dispose();
    affStatisticModel.dispose();
    affSubAffModel.dispose();
  }

  /// Additional helper methods are added here.

}
