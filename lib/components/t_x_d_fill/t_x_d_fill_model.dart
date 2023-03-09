import '/components/instruction/instruction_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TXDFillModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Instruction component.
  late InstructionModel instructionModel1;
  // Model for Instruction component.
  late InstructionModel instructionModel2;
  // Model for Instruction component.
  late InstructionModel instructionModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    instructionModel1 = createModel(context, () => InstructionModel());
    instructionModel2 = createModel(context, () => InstructionModel());
    instructionModel3 = createModel(context, () => InstructionModel());
  }

  void dispose() {
    textController?.dispose();
    instructionModel1.dispose();
    instructionModel2.dispose();
    instructionModel3.dispose();
  }

  /// Additional helper methods are added here.

}
