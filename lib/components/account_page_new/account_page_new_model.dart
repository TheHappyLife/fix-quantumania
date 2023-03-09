import '/components/log_out_confirm/log_out_confirm_widget.dart';
import '/components/menu_item_text/menu_item_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountPageNewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Menu_item_text component.
  late MenuItemTextModel menuItemTextModel1;
  // Model for Menu_item_text component.
  late MenuItemTextModel menuItemTextModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuItemTextModel1 = createModel(context, () => MenuItemTextModel());
    menuItemTextModel2 = createModel(context, () => MenuItemTextModel());
  }

  void dispose() {
    menuItemTextModel1.dispose();
    menuItemTextModel2.dispose();
  }

  /// Additional helper methods are added here.

}
