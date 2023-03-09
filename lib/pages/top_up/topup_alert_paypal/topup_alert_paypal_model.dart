import '/components/headline_section_group_title/headline_section_group_title_widget.dart';
import '/components/instruction/instruction_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopupAlertPaypalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel;
  // Model for Instruction component.
  late InstructionModel instructionModel1;
  // Model for Instruction component.
  late InstructionModel instructionModel2;
  // Model for Instruction component.
  late InstructionModel instructionModel3;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headlineSectionGroupTitleModel =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    instructionModel1 = createModel(context, () => InstructionModel());
    instructionModel2 = createModel(context, () => InstructionModel());
    instructionModel3 = createModel(context, () => InstructionModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    headlineSectionGroupTitleModel.dispose();
    instructionModel1.dispose();
    instructionModel2.dispose();
    instructionModel3.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
