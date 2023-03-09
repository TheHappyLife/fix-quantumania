import '/backend/api_requests/api_calls.dart';
import '/components/bottom_sheet_box_success_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomBoxInvestModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldAmount widget.
  TextEditingController? textFieldAmountController;
  String? Function(BuildContext, String?)? textFieldAmountControllerValidator;
  String? _textFieldAmountControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!\\.)((0*[1-9]\\d*)|(0*\\.\\d+)|([1-9]\\d*\\.\\d+))\$')
        .hasMatch(val)) {
      return 'Please try enter number type interger or decimal';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (withdraWalletInternal)] action in Button widget.
  ApiCallResponse? withdrawResponse;
  // Stores action output result for [Backend Call - API (GetInventory)] action in Button widget.
  ApiCallResponse? responseInventory;
  // Stores action output result for [Backend Call - API (API Get Wallet)] action in Button widget.
  ApiCallResponse? responseWallet;
  // Stores action output result for [Backend Call - API (getActivities)] action in Button widget.
  ApiCallResponse? responseActivitiy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldAmountControllerValidator = _textFieldAmountControllerValidator;
  }

  void dispose() {
    textFieldAmountController?.dispose();
  }

  /// Additional helper methods are added here.

}
