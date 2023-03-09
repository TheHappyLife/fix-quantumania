import '/components/k_y_c_step/k_y_c_step_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class KYCProfileOldModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for KYC_Step component.
  late KYCStepModel kYCStepModel1;
  // Model for KYC_Step component.
  late KYCStepModel kYCStepModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    kYCStepModel1 = createModel(context, () => KYCStepModel());
    kYCStepModel2 = createModel(context, () => KYCStepModel());
  }

  void dispose() {
    kYCStepModel1.dispose();
    kYCStepModel2.dispose();
  }

  /// Additional helper methods are added here.

}
