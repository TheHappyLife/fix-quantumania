import '/components/button_close/button_close_widget.dart';
import '/components/social_item/social_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalShareSocialModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Button_close component.
  late ButtonCloseModel buttonCloseModel;
  // Model for Social_item component.
  late SocialItemModel socialItemModel1;
  // Model for Social_item component.
  late SocialItemModel socialItemModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonCloseModel = createModel(context, () => ButtonCloseModel());
    socialItemModel1 = createModel(context, () => SocialItemModel());
    socialItemModel2 = createModel(context, () => SocialItemModel());
  }

  void dispose() {
    buttonCloseModel.dispose();
    socialItemModel1.dispose();
    socialItemModel2.dispose();
  }

  /// Additional helper methods are added here.

}
