import '/components/aff_component/aff_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AffiliateSubAffModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Aff_Component component.
  late AffComponentModel affComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    affComponentModel = createModel(context, () => AffComponentModel());
  }

  void dispose() {
    affComponentModel.dispose();
  }

  /// Additional helper methods are added here.

}
