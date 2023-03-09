import '/components/header_nav_back/header_nav_back_widget.dart';
import '/components/withdraw_crypto_success/withdraw_crypto_success_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WithdrawWaitingVaildModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Nav_Back component.
  late HeaderNavBackModel headerNavBackModel;
  // Model for withdraw_crypto_success component.
  late WithdrawCryptoSuccessModel withdrawCryptoSuccessModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerNavBackModel = createModel(context, () => HeaderNavBackModel());
    withdrawCryptoSuccessModel =
        createModel(context, () => WithdrawCryptoSuccessModel());
  }

  void dispose() {
    headerNavBackModel.dispose();
    withdrawCryptoSuccessModel.dispose();
  }

  /// Additional helper methods are added here.

}
