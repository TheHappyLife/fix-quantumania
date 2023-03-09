import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bottom_menu3_model.dart';
export 'nav_bottom_menu3_model.dart';

class NavBottomMenu3Widget extends StatefulWidget {
  const NavBottomMenu3Widget({
    Key? key,
    this.current,
  }) : super(key: key);

  final String? current;

  @override
  _NavBottomMenu3WidgetState createState() => _NavBottomMenu3WidgetState();
}

class _NavBottomMenu3WidgetState extends State<NavBottomMenu3Widget> {
  late NavBottomMenu3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBottomMenu3Model());

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
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Image.asset(
                'assets/images/logo-quantum.png',
                width: 48.0,
                height: 48.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
