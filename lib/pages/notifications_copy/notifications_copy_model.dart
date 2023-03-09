import '/components/noti_page/noti_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsCopyModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String choichipsActivity = 'All Activity';

  ///  State fields for stateful widgets in this page.

  // Model for NotiPage component.
  late NotiPageModel notiPageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    notiPageModel = createModel(context, () => NotiPageModel());
  }

  void dispose() {
    notiPageModel.dispose();
  }

  /// Additional helper methods are added here.

}
