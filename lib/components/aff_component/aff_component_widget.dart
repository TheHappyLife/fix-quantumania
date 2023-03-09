import '/components/aff_congrats/aff_congrats_widget.dart';
import '/components/aff_statistic/aff_statistic_widget.dart';
import '/components/aff_statistic_update/aff_statistic_update_widget.dart';
import '/components/aff_sub_aff/aff_sub_aff_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aff_component_model.dart';
export 'aff_component_model.dart';

class AffComponentWidget extends StatefulWidget {
  const AffComponentWidget({Key? key}) : super(key: key);

  @override
  _AffComponentWidgetState createState() => _AffComponentWidgetState();
}

class _AffComponentWidgetState extends State<AffComponentWidget> {
  late AffComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AffComponentModel());

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
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 56.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.affCongratsModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: AffCongratsWidget(),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 20.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: InkWell(
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                    .currentPageOverview = 0;
                                              });
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Overview',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .title1
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .title1Family,
                                                            color: FFAppState()
                                                                        .currentPageOverview ==
                                                                    0
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .neutrals2,
                                                            fontSize: FFAppState()
                                                                        .currentPageOverview ==
                                                                    0
                                                                ? 24.0
                                                                : 16.0,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .title1Family),
                                                            lineHeight: 1.6,
                                                          ),
                                                ),
                                                if (FFAppState()
                                                        .currentPageOverview ==
                                                    0)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Image.asset(
                                                      'assets/images/indicator.png',
                                                      width: 110.0,
                                                      height: 3.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 2.0,
                                          decoration: BoxDecoration(),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            setState(() {
                                              FFAppState().currentPageOverview =
                                                  1;
                                            });
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Investment',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family,
                                                      color: FFAppState()
                                                                  .currentPageOverview ==
                                                              1
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .neutrals2,
                                                      fontSize: FFAppState()
                                                                  .currentPageOverview ==
                                                              1
                                                          ? 24.0
                                                          : 16.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .subtitle2Family),
                                                      lineHeight: 1.6,
                                                    ),
                                              ),
                                              if (FFAppState()
                                                      .currentPageOverview ==
                                                  1)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 2.0, 0.0, 0.0),
                                                  child: Image.asset(
                                                    'assets/images/indicator.png',
                                                    width: 110.0,
                                                    height: 3.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 24.0, 16.0, 0.0),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 24.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 48.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 48.0),
                                        child: Wrap(
                                          spacing: 0.0,
                                          runSpacing: 16.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ),
                                              child: wrapWithModel(
                                                model: _model
                                                    .affStatisticUpdateModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: AffStatisticUpdateWidget(
                                                  subTitle: 'khung',
                                                ),
                                              ),
                                            ),
                                            Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ),
                                              child: wrapWithModel(
                                                model: _model.affStatisticModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: AffStatisticWidget(
                                                  subTitle: 'static',
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 48.0),
                                              child: wrapWithModel(
                                                model: _model.affSubAffModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: AffSubAffWidget(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
