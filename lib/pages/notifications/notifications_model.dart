import '/components/header_nav_back/header_nav_back_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/components/noti_item/noti_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Nav_Back component.
  late HeaderNavBackModel headerNavBackModel;
  // Model for Noti_item component.
  late NotiItemModel notiItemModel1;
  // Model for Noti_item component.
  late NotiItemModel notiItemModel2;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerNavBackModel = createModel(context, () => HeaderNavBackModel());
    notiItemModel1 = createModel(context, () => NotiItemModel());
    notiItemModel2 = createModel(context, () => NotiItemModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    headerNavBackModel.dispose();
    notiItemModel1.dispose();
    notiItemModel2.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
