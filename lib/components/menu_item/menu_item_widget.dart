import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'menu_item_model.dart';
export 'menu_item_model.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({
    Key? key,
    this.title,
    this.subTitle,
    this.current,
    this.bgColor,
    this.lottie,
  }) : super(key: key);

  final String? title;
  final String? subTitle;
  final String? current;
  final Color? bgColor;
  final String? lottie;

  @override
  _MenuItemWidgetState createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  late MenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

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
      decoration: BoxDecoration(
        color: widget.bgColor,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 14.0, 24.0, 14.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Lottie.network(
              'https://firebasestorage.googleapis.com/v0/b/huntgem-tuyen-ca7a4.appspot.com/o/lottiefiles%2F143-paperplane-send-outline.json?alt=media&token=c3b99780-2369-4582-88f6-4d8e25ead192',
              width: 32.0,
              height: 32.0,
              fit: BoxFit.cover,
              repeat: false,
              animate: true,
            ),
          ],
        ),
      ),
    );
  }
}
