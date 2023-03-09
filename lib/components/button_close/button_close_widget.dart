import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_close_model.dart';
export 'button_close_model.dart';

class ButtonCloseWidget extends StatefulWidget {
  const ButtonCloseWidget({Key? key}) : super(key: key);

  @override
  _ButtonCloseWidgetState createState() => _ButtonCloseWidgetState();
}

class _ButtonCloseWidgetState extends State<ButtonCloseWidget> {
  late ButtonCloseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonCloseModel());

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

    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
          width: 2.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.close,
            color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
            size: 24.0,
          ),
        ],
      ),
    );
  }
}
