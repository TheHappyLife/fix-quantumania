import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_nav_back_model.dart';
export 'header_nav_back_model.dart';

class HeaderNavBackWidget extends StatefulWidget {
  const HeaderNavBackWidget({
    Key? key,
    this.back,
  }) : super(key: key);

  final Future<dynamic> Function()? back;

  @override
  _HeaderNavBackWidgetState createState() => _HeaderNavBackWidgetState();
}

class _HeaderNavBackWidgetState extends State<HeaderNavBackWidget> {
  late HeaderNavBackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderNavBackModel());

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

    return InkWell(
      onTap: () async {
        context.pop();
      },
      child: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 99.0,
            borderWidth: 0.0,
            buttonSize: 32.0,
            fillColor: FlutterFlowTheme.of(context).aliasGrayscaleInput,
            icon: FaIcon(
              FontAwesomeIcons.angleLeft,
              color: FlutterFlowTheme.of(context).aliasGrayscaleBody,
              size: 16.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
        ),
      ),
    );
  }
}
