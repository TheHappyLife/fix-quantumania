import '/backend/api_requests/api_calls.dart';
import '/components/profile_page/profile_page_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool editProfile = true;

  String notKyc = 'no';

  String yesKyc = 'yes';

  String handlingKyc = 'hadling';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (API Profile)] action in Column widget.
  ApiCallResponse? profileRefresh;
  // Model for ProfilePage component.
  late ProfilePageModel profilePageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    profilePageModel = createModel(context, () => ProfilePageModel());
  }

  void dispose() {
    profilePageModel.dispose();
  }

  /// Additional helper methods are added here.

}
