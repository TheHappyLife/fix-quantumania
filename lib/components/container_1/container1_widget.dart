import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'container1_model.dart';
export 'container1_model.dart';

class Container1Widget extends StatefulWidget {
  const Container1Widget({
    Key? key,
    this.text,
    this.image,
    this.loadingWallet,
  }) : super(key: key);

  final String? text;
  final String? image;
  final bool? loadingWallet;

  @override
  _Container1WidgetState createState() => _Container1WidgetState();
}

class _Container1WidgetState extends State<Container1Widget> {
  late Container1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Container1Model());

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

    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(
          alignment: AlignmentDirectional(1.0, 0.0),
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (widget.loadingWallet == false)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    child: GradientText(
                      widget.text!,
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).title1Family,
                            fontSize: 32.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).title1Family),
                            lineHeight: 1.0,
                          ),
                      colors: [Color(0xFF2378B7), Color(0xFF04D2C6)],
                      gradientDirection: GradientDirection.ltr,
                      gradientType: GradientType.linear,
                    ),
                  ),
                if (widget.loadingWallet == true)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Lottie.asset(
                      'assets/lottie_animations/loading-line.json',
                      width: 66.0,
                      height: 46.0,
                      fit: BoxFit.cover,
                      animate: true,
                    ),
                  ),
              ],
            ),
            Image.network(
              valueOrDefault<String>(
                widget.image,
                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/ahpekv19yrnp/Inflation.png',
              ),
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
