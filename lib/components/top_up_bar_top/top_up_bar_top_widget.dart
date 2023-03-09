import '/components/container_1/container1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_up_bar_top_model.dart';
export 'top_up_bar_top_model.dart';

class TopUpBarTopWidget extends StatefulWidget {
  const TopUpBarTopWidget({Key? key}) : super(key: key);

  @override
  _TopUpBarTopWidgetState createState() => _TopUpBarTopWidgetState();
}

class _TopUpBarTopWidgetState extends State<TopUpBarTopWidget> {
  late TopUpBarTopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopUpBarTopModel());

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
      width: MediaQuery.of(context).size.width * 1.0,
      decoration: BoxDecoration(),
      child: Wrap(
        spacing: 0.0,
        runSpacing: 0.0,
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.spaceBetween,
        verticalDirection: VerticalDirection.down,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.44,
            decoration: BoxDecoration(),
            child: wrapWithModel(
              model: _model.container1Model1,
              updateCallback: () => setState(() {}),
              child: Container1Widget(
                text: '100',
                image:
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/t4ajvxl3czf3/inflation-2.png',
                loadingWallet: false,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.44,
            decoration: BoxDecoration(),
            child: wrapWithModel(
              model: _model.container1Model2,
              updateCallback: () => setState(() {}),
              child: Container1Widget(
                text: '100',
                image:
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/quantum-qqi-1xxjoy/assets/ahpekv19yrnp/Inflation.png',
                loadingWallet: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
