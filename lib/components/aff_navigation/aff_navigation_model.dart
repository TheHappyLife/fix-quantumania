import '/components/item_rounded_1/item_rounded1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AffNavigationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Item_rounded_1 component.
  late ItemRounded1Model itemRounded1Model1;
  // Model for Item_rounded_1 component.
  late ItemRounded1Model itemRounded1Model2;
  // Model for Item_rounded_1 component.
  late ItemRounded1Model itemRounded1Model3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    itemRounded1Model1 = createModel(context, () => ItemRounded1Model());
    itemRounded1Model2 = createModel(context, () => ItemRounded1Model());
    itemRounded1Model3 = createModel(context, () => ItemRounded1Model());
  }

  void dispose() {
    itemRounded1Model1.dispose();
    itemRounded1Model2.dispose();
    itemRounded1Model3.dispose();
  }

  /// Additional helper methods are added here.

}
