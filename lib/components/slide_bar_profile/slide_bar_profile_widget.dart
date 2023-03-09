import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'slide_bar_profile_model.dart';
export 'slide_bar_profile_model.dart';

class SlideBarProfileWidget extends StatefulWidget {
  const SlideBarProfileWidget({Key? key}) : super(key: key);

  @override
  _SlideBarProfileWidgetState createState() => _SlideBarProfileWidgetState();
}

class _SlideBarProfileWidgetState extends State<SlideBarProfileWidget> {
  late SlideBarProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SlideBarProfileModel());

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
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [],
      ),
    );
  }
}
