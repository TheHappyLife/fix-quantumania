import '/components/noti_page/noti_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notifications_copy_model.dart';
export 'notifications_copy_model.dart';

class NotificationsCopyWidget extends StatefulWidget {
  const NotificationsCopyWidget({
    Key? key,
    this.current,
  }) : super(key: key);

  final String? current;

  @override
  _NotificationsCopyWidgetState createState() =>
      _NotificationsCopyWidgetState();
}

class _NotificationsCopyWidgetState extends State<NotificationsCopyWidget> {
  late NotificationsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: wrapWithModel(
              model: _model.notiPageModel,
              updateCallback: () => setState(() {}),
              updateOnChange: true,
              child: NotiPageWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
