import '/backend/api_requests/api_calls.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/item_data_1/item_data1_widget.dart';
import '/components/item_data_2/item_data2_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AffStatisticUpdateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  // Model for Item_data component.
  late ItemDataModel itemDataModel;
  // Model for Item_data_1 component.
  late ItemData1Model itemData1Model;
  // Model for Item_data_2 component.
  late ItemData2Model itemData2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    itemDataModel = createModel(context, () => ItemDataModel());
    itemData1Model = createModel(context, () => ItemData1Model());
    itemData2Model = createModel(context, () => ItemData2Model());
  }

  void dispose() {
    itemDataModel.dispose();
    itemData1Model.dispose();
    itemData2Model.dispose();
  }

  /// Additional helper methods are added here.

}
