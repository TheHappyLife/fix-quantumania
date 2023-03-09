import '/backend/api_requests/api_calls.dart';
import '/components/header_tool_item_image/header_tool_item_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'balance_hcash_model.dart';
export 'balance_hcash_model.dart';

class BalanceHcashWidget extends StatefulWidget {
  const BalanceHcashWidget({Key? key}) : super(key: key);

  @override
  _BalanceHcashWidgetState createState() => _BalanceHcashWidgetState();
}

class _BalanceHcashWidgetState extends State<BalanceHcashWidget> {
  late BalanceHcashModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BalanceHcashModel());

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
                'https://firebasestorage.googleapis.com/v0/b/huntgem-tuyen-ca7a4.appspot.com/o/images%2Fhcash-linear.png?alt=media&token=92cf959f-3014-4ad7-aa51-4876c42f980a',
            label: WalletCall.hcash(
              headerToolItemImageWalletResponse.jsonBody,
            ).toString(),
          ),
        );
      },
    );
  }
}
