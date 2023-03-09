import '/components/container_1/container1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopUpBarTopModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Container_1 component.
  late Container1Model container1Model1;
  // Model for Container_1 component.
  late Container1Model container1Model2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    container1Model1 = createModel(context, () => Container1Model());
    container1Model2 = createModel(context, () => Container1Model());
  }

  void dispose() {
    container1Model1.dispose();
    container1Model2.dispose();
  }

  /// Additional helper methods are added here.

}
