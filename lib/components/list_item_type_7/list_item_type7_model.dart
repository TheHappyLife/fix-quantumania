import '/components/badge_brand_small/badge_brand_small_widget.dart';
import '/components/gem_item_horizontal/gem_item_horizontal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListItemType7Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Badge_Brand_Small component.
  late BadgeBrandSmallModel badgeBrandSmallModel;
  // Model for Gem_item_horizontal component.
  late GemItemHorizontalModel gemItemHorizontalModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    badgeBrandSmallModel = createModel(context, () => BadgeBrandSmallModel());
    gemItemHorizontalModel =
        createModel(context, () => GemItemHorizontalModel());
  }

  void dispose() {
    badgeBrandSmallModel.dispose();
    gemItemHorizontalModel.dispose();
  }

  /// Additional helper methods are added here.

}
