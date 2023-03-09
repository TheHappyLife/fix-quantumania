import '/components/my_account_page/my_account_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_sidebar_model.dart';
export 'nav_sidebar_model.dart';

class NavSidebarWidget extends StatefulWidget {
  const NavSidebarWidget({Key? key}) : super(key: key);

  @override
  _NavSidebarWidgetState createState() => _NavSidebarWidgetState();
}

class _NavSidebarWidgetState extends State<NavSidebarWidget> {
  late NavSidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavSidebarModel());

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
      model: _model.myAccountPageModel,
      updateCallback: () => setState(() {}),
      child: MyAccountPageWidget(),
    );
  }
}
