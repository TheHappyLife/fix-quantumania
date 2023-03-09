import '/components/overview_main_update/overview_main_update_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'overview_v2update_model.dart';
export 'overview_v2update_model.dart';

class OverviewV2updateWidget extends StatefulWidget {
  const OverviewV2updateWidget({Key? key}) : super(key: key);

  @override
  _OverviewV2updateWidgetState createState() => _OverviewV2updateWidgetState();
}

class _OverviewV2updateWidgetState extends State<OverviewV2updateWidget> {
  late OverviewV2updateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OverviewV2updateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.overviewMainUpdateModel,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: OverviewMainUpdateWidget(
                  loadingChart: true,
                  loadingPackage: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
