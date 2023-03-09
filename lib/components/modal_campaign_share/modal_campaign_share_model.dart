import '/components/button_close/button_close_widget.dart';
import '/components/modal_share_social/modal_share_social_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ModalCampaignShareModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for Button_close component.
  late ButtonCloseModel buttonCloseModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonCloseModel = createModel(context, () => ButtonCloseModel());
  }

  void dispose() {
    buttonCloseModel.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
