import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_box_jackpot_model.dart';
export 'my_box_jackpot_model.dart';

class MyBoxJackpotWidget extends StatefulWidget {
  const MyBoxJackpotWidget({Key? key}) : super(key: key);

  @override
  _MyBoxJackpotWidgetState createState() => _MyBoxJackpotWidgetState();
}

class _MyBoxJackpotWidgetState extends State<MyBoxJackpotWidget> {
  late MyBoxJackpotModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyBoxJackpotModel());

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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            '',
            width: 32.0,
            height: 25.0,
            fit: BoxFit.cover,
          ),
          Text(
            'My Jackpot',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyText2.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                  color: FlutterFlowTheme.of(context).neutrals8,
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText2Family),
                  lineHeight: 1.7,
                ),
          ),
        ],
      ),
    );
  }
}
