import '/backend/api_requests/api_calls.dart';
import '/components/e_kyc_bottom_sheet/e_kyc_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WithdrawCastoutModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldAddress widget.
  TextEditingController? textFieldAddressController;
  String? Function(BuildContext, String?)? textFieldAddressControllerValidator;
  String? _textFieldAddressControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }
    if (val.length > 80) {
      return 'Maximum 80 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for TextFieldAmount widget.
  TextEditingController? textFieldAmountController;
  String? Function(BuildContext, String?)? textFieldAmountControllerValidator;
  String? _textFieldAmountControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('[0-9]').hasMatch(val)) {
      return 'Number is not valid';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (API Login)] action in Button widget.
  ApiCallResponse? resultLogin;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldAddressControllerValidator = _textFieldAddressControllerValidator;
    textFieldAmountControllerValidator = _textFieldAmountControllerValidator;
  }

  void dispose() {
    textFieldAddressController?.dispose();
    textFieldAmountController?.dispose();
  }

  /// Additional helper methods are added here.

}
