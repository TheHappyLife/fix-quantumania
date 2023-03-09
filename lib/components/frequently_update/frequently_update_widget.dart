import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'frequently_update_model.dart';
export 'frequently_update_model.dart';

class FrequentlyUpdateWidget extends StatefulWidget {
  const FrequentlyUpdateWidget({Key? key}) : super(key: key);

  @override
  _FrequentlyUpdateWidgetState createState() => _FrequentlyUpdateWidgetState();
}

class _FrequentlyUpdateWidgetState extends State<FrequentlyUpdateWidget> {
  late FrequentlyUpdateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrequentlyUpdateModel());

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

    return Container();
  }
}
