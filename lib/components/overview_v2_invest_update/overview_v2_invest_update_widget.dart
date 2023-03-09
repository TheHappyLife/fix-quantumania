import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'overview_v2_invest_update_model.dart';
export 'overview_v2_invest_update_model.dart';

class OverviewV2InvestUpdateWidget extends StatefulWidget {
  const OverviewV2InvestUpdateWidget({Key? key}) : super(key: key);

  @override
  _OverviewV2InvestUpdateWidgetState createState() =>
      _OverviewV2InvestUpdateWidgetState();
}

class _OverviewV2InvestUpdateWidgetState
    extends State<OverviewV2InvestUpdateWidget> {
  late OverviewV2InvestUpdateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OverviewV2InvestUpdateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
