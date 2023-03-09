import '/backend/api_requests/api_calls.dart';
import '/components/headline_section_group_title/headline_section_group_title_widget.dart';
import '/components/wallet/wallet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WithdrawModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Wallet component.
  late WalletModel walletModel;
  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel;
  // State field(s) for TextFieldToken widget.
  TextEditingController? textFieldTokenController;
  String? Function(BuildContext, String?)? textFieldTokenControllerValidator;
  // State field(s) for TextFieldNetwork widget.
  TextEditingController? textFieldNetworkController;
  String? Function(BuildContext, String?)? textFieldNetworkControllerValidator;
  // State field(s) for TextFieldAddress widget.
  TextEditingController? textFieldAddressController;
  String? Function(BuildContext, String?)? textFieldAddressControllerValidator;
  String? _textFieldAddressControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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
      return 'Please enter number type interger or decimal';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Stores action output result for [Backend Call - API (API Login)] action in Button widget.
  ApiCallResponse? resultLogin;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    walletModel = createModel(context, () => WalletModel());
    headlineSectionGroupTitleModel =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    textFieldAddressControllerValidator = _textFieldAddressControllerValidator;
    textFieldAmountControllerValidator = _textFieldAmountControllerValidator;
  }

  void dispose() {
    walletModel.dispose();
    headlineSectionGroupTitleModel.dispose();
    textFieldTokenController?.dispose();
    textFieldNetworkController?.dispose();
    textFieldAddressController?.dispose();
    textFieldAmountController?.dispose();
    textController5?.dispose();
  }

  /// Additional helper methods are added here.

}
