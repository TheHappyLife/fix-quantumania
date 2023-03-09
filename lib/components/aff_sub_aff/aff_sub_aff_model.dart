import '/backend/api_requests/api_calls.dart';
import '/components/content_list_item_type_2/content_list_item_type2_widget.dart';
import '/components/emty/emty_widget.dart';
import '/components/list_item_type_3/list_item_type3_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AffSubAffModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool notLoadingSearch = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for SearchInput widget.
  TextEditingController? searchInputController;
  String? Function(BuildContext, String?)? searchInputControllerValidator;
  // Stores action output result for [Backend Call - API (Get SubAff)] action in SearchInput widget.
  ApiCallResponse? searchResponse;
  // Model for Waiting component.
  late WaitingModel waitingModel;
  // Model for Content_List_Item_Type_2 component.
  late ContentListItemType2Model contentListItemType2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    waitingModel = createModel(context, () => WaitingModel());
    contentListItemType2Model =
        createModel(context, () => ContentListItemType2Model());
  }

  void dispose() {
    searchInputController?.dispose();
    waitingModel.dispose();
    contentListItemType2Model.dispose();
  }

  /// Additional helper methods are added here.

}
