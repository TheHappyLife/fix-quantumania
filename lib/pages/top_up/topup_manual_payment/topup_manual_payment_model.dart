import '/backend/api_requests/api_calls.dart';
import '/components/headline_section_group_title/headline_section_group_title_widget.dart';
import '/components/instruction/instruction_widget.dart';
import '/components/wallet/wallet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TopupManualPaymentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Wallet component.
  late WalletModel walletModel;
  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel;
  // State field(s) for TextFieldAdddress widget.
  TextEditingController? textFieldAdddressController1;
  String? Function(BuildContext, String?)?
      textFieldAdddressController1Validator;
  // State field(s) for TextFieldAdddress widget.
  TextEditingController? textFieldAdddressController2;
  String? Function(BuildContext, String?)?
      textFieldAdddressController2Validator;
  // State field(s) for TextFieldAdddress widget.
  TextEditingController? textFieldAdddressController3;
  String? Function(BuildContext, String?)?
      textFieldAdddressController3Validator;
  // Stores action output result for [Backend Call - API (Stop Tracking)] action in Button widget.
  ApiCallResponse? apiResulth3q;
  // Model for Instruction component.
  late InstructionModel instructionModel1;
  // Model for Instruction component.
  late InstructionModel instructionModel2;
  // Model for Instruction component.
  late InstructionModel instructionModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    walletModel = createModel(context, () => WalletModel());
    headlineSectionGroupTitleModel =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    instructionModel1 = createModel(context, () => InstructionModel());
    instructionModel2 = createModel(context, () => InstructionModel());
    instructionModel3 = createModel(context, () => InstructionModel());
  }

  void dispose() {
    walletModel.dispose();
    headlineSectionGroupTitleModel.dispose();
    textFieldAdddressController1?.dispose();
    textFieldAdddressController2?.dispose();
    textFieldAdddressController3?.dispose();
    instructionModel1.dispose();
    instructionModel2.dispose();
    instructionModel3.dispose();
  }

  /// Additional helper methods are added here.

}
