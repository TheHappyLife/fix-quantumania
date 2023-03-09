import '/components/badge_brand_small/badge_brand_small_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListItemType5Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Badge_Brand_Small component.
  late BadgeBrandSmallModel badgeBrandSmallModel1;
  // Model for Badge_Brand_Small component.
  late BadgeBrandSmallModel badgeBrandSmallModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    badgeBrandSmallModel1 = createModel(context, () => BadgeBrandSmallModel());
    badgeBrandSmallModel2 = createModel(context, () => BadgeBrandSmallModel());
  }

  void dispose() {
    badgeBrandSmallModel1.dispose();
    badgeBrandSmallModel2.dispose();
  }

  /// Additional helper methods are added here.

}
