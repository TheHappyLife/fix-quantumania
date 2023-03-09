import '/components/headline_section_group_title/headline_section_group_title_widget.dart';
import '/components/headline_section_title/headline_section_title_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class ProfilePageModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String notKyc = 'no';

  String handlingKyc = 'handling';

  String yesKyc = 'yes';

  String? errorAff = '';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel;
  // Model for Headline_Section_Title component.
  late HeadlineSectionTitleModel headlineSectionTitleModel;
  // State field(s) for TextFieldFirstName widget.
  TextEditingController? textFieldFirstNameController;
  String? Function(BuildContext, String?)?
      textFieldFirstNameControllerValidator;
  String? _textFieldFirstNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 15) {
      return 'First name length \nmust not exceed 15 characters';
    }
    if (!RegExp('^[a-zA-ZÀ-ỹ ][a-zA-ZÀ-ỹ 0-9]*[a-zA-ZÀ-ỹ ]\$').hasMatch(val)) {
      return 'Must not contain special characters';
    }
    return null;
  }

  // State field(s) for TextFieldLastName widget.
  TextEditingController? textFieldLastNameController;
  String? Function(BuildContext, String?)? textFieldLastNameControllerValidator;
  String? _textFieldLastNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 15) {
      return 'Last name length \nmust not exceed 15 characters';
    }
    if (!RegExp('^[a-zA-ZÀ-ỹ ][a-zA-ZÀ-ỹ 0-9]*[a-zA-ZÀ-ỹ ]\$').hasMatch(val)) {
      return 'Must not contain special characters';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for TextFieldIdInfo widget.
  TextEditingController? textFieldIdInfoController;
  String? Function(BuildContext, String?)? textFieldIdInfoControllerValidator;
  String? _textFieldIdInfoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter the correct email format';
    }
    return null;
  }

  // State field(s) for TextFieldEmail widget.
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  // State field(s) for TextFieldPhoneNumber widget.
  TextEditingController? textFieldPhoneNumberController;
  String? Function(BuildContext, String?)?
      textFieldPhoneNumberControllerValidator;
  String? _textFieldPhoneNumberControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Invalid phone number';
    }
    if (val.length > 10) {
      return 'Invalid phone number';
    }
    if (!RegExp('^(0|\\+84) ?([1-9]\\d\\d|[1-9]\\d{2,3}) ?\\d{3} ?\\d{3}\$')
        .hasMatch(val)) {
      return 'Invalid phone number';
    }
    return null;
  }

  // State field(s) for TextFieldAFF widget.
  TextEditingController? textFieldAFFController;
  String? Function(BuildContext, String?)? textFieldAFFControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headlineSectionGroupTitleModel =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    headlineSectionTitleModel =
        createModel(context, () => HeadlineSectionTitleModel());
    textFieldFirstNameControllerValidator =
        _textFieldFirstNameControllerValidator;
    textFieldLastNameControllerValidator =
        _textFieldLastNameControllerValidator;
    textFieldIdInfoControllerValidator = _textFieldIdInfoControllerValidator;
    textFieldPhoneNumberControllerValidator =
        _textFieldPhoneNumberControllerValidator;
  }

  void dispose() {
    headlineSectionGroupTitleModel.dispose();
    headlineSectionTitleModel.dispose();
    textFieldFirstNameController?.dispose();
    textFieldLastNameController?.dispose();
    textFieldIdInfoController?.dispose();
    textFieldEmailController?.dispose();
    textFieldPhoneNumberController?.dispose();
    textFieldAFFController?.dispose();
  }

  /// Additional helper methods are added here.

}
