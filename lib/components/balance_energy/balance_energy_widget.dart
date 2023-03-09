import '/components/header_tool_item_image/header_tool_item_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'balance_energy_model.dart';
export 'balance_energy_model.dart';

class BalanceEnergyWidget extends StatefulWidget {
  const BalanceEnergyWidget({Key? key}) : super(key: key);

  @override
  _BalanceEnergyWidgetState createState() => _BalanceEnergyWidgetState();
}

class _BalanceEnergyWidgetState extends State<BalanceEnergyWidget> {
  late BalanceEnergyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BalanceEnergyModel());

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

    return wrapWithModel(
      model: _model.headerToolItemImageModel,
      updateCallback: () => setState(() {}),
      child: HeaderToolItemImageWidget(
        image:
            'https://firebasestorage.googleapis.com/v0/b/huntgem-tuyen-ca7a4.appspot.com/o/images%2Fenergy-linear.png?alt=media&token=ba6f6b02-58b7-4e29-98d7-d90d387a3523',
        label: '50',
      ),
    );
  }
}
