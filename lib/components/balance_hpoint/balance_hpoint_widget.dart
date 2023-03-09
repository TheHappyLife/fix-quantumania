import '/backend/api_requests/api_calls.dart';
import '/components/header_tool_item_image/header_tool_item_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'balance_hpoint_model.dart';
export 'balance_hpoint_model.dart';

class BalanceHpointWidget extends StatefulWidget {
  const BalanceHpointWidget({Key? key}) : super(key: key);

  @override
  _BalanceHpointWidgetState createState() => _BalanceHpointWidgetState();
}

class _BalanceHpointWidgetState extends State<BalanceHpointWidget> {
  late BalanceHpointModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BalanceHpointModel());

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

    return FutureBuilder<ApiCallResponse>(
      future: WalletCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitFadingCircle(
                color: FlutterFlowTheme.of(context).primary1,
                size: 50.0,
              ),
            ),
          );
        }
        final headerToolItemImageWalletResponse = snapshot.data!;
        return wrapWithModel(
          model: _model.headerToolItemImageModel,
          updateCallback: () => setState(() {}),
          child: HeaderToolItemImageWidget(
            image:
                'https://firebasestorage.googleapis.com/v0/b/huntgem-tuyen-ca7a4.appspot.com/o/images%2Fhpoint-linear.png?alt=media&token=fca70dc7-a770-4375-8e0e-a4b523d06696',
            label: WalletCall.hpoint(
              headerToolItemImageWalletResponse.jsonBody,
            ).toString(),
          ),
        );
      },
    );
  }
}
