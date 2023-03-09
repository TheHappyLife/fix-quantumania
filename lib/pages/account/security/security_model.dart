import '/components/device_item/device_item_widget.dart';
import '/components/headline_section_group_title/headline_section_group_title_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/components/wrap_authen/wrap_authen_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SecurityModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel1;
  // Model for Wrap_Authen component.
  late WrapAuthenModel wrapAuthenModel1;
  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel2;
  // Model for Wrap_Authen component.
  late WrapAuthenModel wrapAuthenModel2;
  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel3;
  // Model for Device_item component.
  late DeviceItemModel deviceItemModel1;
  // Model for Device_item component.
  late DeviceItemModel deviceItemModel2;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headlineSectionGroupTitleModel1 =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    wrapAuthenModel1 = createModel(context, () => WrapAuthenModel());
    headlineSectionGroupTitleModel2 =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    wrapAuthenModel2 = createModel(context, () => WrapAuthenModel());
    headlineSectionGroupTitleModel3 =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    deviceItemModel1 = createModel(context, () => DeviceItemModel());
    deviceItemModel2 = createModel(context, () => DeviceItemModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    headlineSectionGroupTitleModel1.dispose();
    wrapAuthenModel1.dispose();
    headlineSectionGroupTitleModel2.dispose();
    wrapAuthenModel2.dispose();
    headlineSectionGroupTitleModel3.dispose();
    deviceItemModel1.dispose();
    deviceItemModel2.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
