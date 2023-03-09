import '/components/log_out_confirm/log_out_confirm_widget.dart';
import '/components/menu_item_text/menu_item_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'account_page_new_model.dart';
export 'account_page_new_model.dart';

class AccountPageNewWidget extends StatefulWidget {
  const AccountPageNewWidget({Key? key}) : super(key: key);

  @override
  _AccountPageNewWidgetState createState() => _AccountPageNewWidgetState();
}

class _AccountPageNewWidgetState extends State<AccountPageNewWidget>
    with TickerProviderStateMixin {
  late AccountPageNewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountPageNewModel());

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
    final lottieProfileController = AnimationController(vsync: this);
    final lottieLogoutController = AnimationController(vsync: this);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
      ),
      // child: Text('Nguyen Hello',
      //     style: TextStyle(
      //         color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Wrap(
            spacing: 8.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color:
                      FlutterFlowTheme.of(context).aliasGrayscaleBackgroundWeak,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 14.0, 24.0, 14.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(99.0),
                            child: Image.asset(
                              'assets/images/User-Logged.png',
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 4.0),
                                    child: Text(
                                      (getJsonField(
                                                    FFAppState()
                                                        .responseProfile,
                                                    r'''$.data.first_name''',
                                                  ) !=
                                                  null) &&
                                              (getJsonField(
                                                    FFAppState()
                                                        .responseProfile,
                                                    r'''$.data.last_name''',
                                                  ) !=
                                                  null)
                                          ? functions.displayName(
                                              getJsonField(
                                                FFAppState().responseProfile,
                                                r'''$.data.first_name''',
                                              ).toString(),
                                              getJsonField(
                                                FFAppState().responseProfile,
                                                r'''$.data.last_name''',
                                              ).toString())
                                          : 'Newbie',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family,
                                            color: FlutterFlowTheme.of(context)
                                                .aliasGrayscaleLabel,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 4.0, 0.0),
                                        child: Image.asset(
                                          'assets/images/account-user_icon_member.png',
                                          width: 12.0,
                                          height: 12.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        functions
                                            .displayRank(valueOrDefault<double>(
                                          (getJsonField(
                                                        FFAppState()
                                                            .statisticResponse,
                                                        r'''$.data.total''',
                                                      ) ==
                                                      null
                                                  ? 0
                                                  : getJsonField(
                                                      FFAppState()
                                                          .statisticResponse,
                                                      r'''$.data.total''',
                                                    ))
                                              .toDouble(),
                                          0.0,
                                        )),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .aliasGrayscaleHeader,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          //   child: Wrap(
          //     spacing: 8.0,
          //     runSpacing: 8.0,
          //     alignment: WrapAlignment.start,
          //     crossAxisAlignment: WrapCrossAlignment.start,
          //     direction: Axis.horizontal,
          //     runAlignment: WrapAlignment.start,
          //     verticalDirection: VerticalDirection.down,
          //     clipBehavior: Clip.none,
          //     children: [
          //       InkWell(
          //         onTap: () async {
          //           context.pushNamed('Profile');

          //           await lottieProfileController.forward();
          //           lottieProfileController.reset();
          //         },
          //         child: Container(
          //           width: MediaQuery.of(context).size.width * 1.0,
          //           decoration: BoxDecoration(
          //             color: Color(0x00FFFFFF),
          //           ),
          //           child: Padding(
          //             padding: EdgeInsetsDirectional.fromSTEB(
          //                 24.0, 14.0, 24.0, 14.0),
          //             child: Row(
          //               mainAxisSize: MainAxisSize.max,
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               children: [
          //                 Lottie.asset(
          //                   'assets/lottie_animations/306-avatar-icon-calm-outline-edited.json',
          //                   width: 36.0,
          //                   height: 36.0,
          //                   fit: BoxFit.cover,
          //                   controller: lottieProfileController,
          //                   onLoaded: (composition) => lottieProfileController
          //                       .duration = composition.duration,
          //                 ),
          //                 Expanded(
          //                   child: wrapWithModel(
          //                     model: _model.menuItemTextModel1,
          //                     updateCallback: () => setState(() {}),
          //                     child: MenuItemTextWidget(
          //                       title: 'Profile',
          //                       subTitle: '',
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () async {
          //           await showModalBottomSheet(
          //             isScrollControlled: true,
          //             backgroundColor: Color(0x4D000000),
          //             barrierColor: Color(0x4D000000),
          //             context: context,
          //             builder: (context) {
          //               return Padding(
          //                 padding: MediaQuery.of(context).viewInsets,
          //                 child: Container(
          //                   height: MediaQuery.of(context).size.height * 1.0,
          //                   child: LogOutConfirmWidget(),
          //                 ),
          //               );
          //             },
          //           ).then((value) => setState(() {}));

          //           await lottieLogoutController.forward();
          //           lottieLogoutController.reset();
          //         },
          //         child: Container(
          //           width: MediaQuery.of(context).size.width * 1.0,
          //           decoration: BoxDecoration(
          //             color: Color(0x00FFFFFF),
          //           ),
          //           child: Padding(
          //             padding: EdgeInsetsDirectional.fromSTEB(
          //                 24.0, 14.0, 24.0, 14.0),
          //             child: Row(
          //               mainAxisSize: MainAxisSize.max,
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               children: [
          //                 Lottie.asset(
          //                   'assets/lottie_animations/2129-login-outline-edited.json',
          //                   width: 36.0,
          //                   height: 36.0,
          //                   fit: BoxFit.cover,
          //                   controller: lottieLogoutController,
          //                   onLoaded: (composition) => lottieLogoutController
          //                       .duration = composition.duration,
          //                 ),
          //                 Expanded(
          //                   child: wrapWithModel(
          //                     model: _model.menuItemTextModel2,
          //                     updateCallback: () => setState(() {}),
          //                     child: MenuItemTextWidget(
          //                       title: 'Log Out',
          //                       subTitle: '',
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // InkWell(
          //   onTap: () async {
          //     await launchUrl(Uri(
          //       scheme: 'mailto',
          //       path: 'support@quantumania.capital',
          //     ));
          //   },
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 1.0,
          //     decoration: BoxDecoration(
          //       color: FlutterFlowTheme.of(context).aliasGrayscaleBackground,
          //     ),
          //     child: Padding(
          //       padding: EdgeInsetsDirectional.fromSTEB(24.0, 28.0, 24.0, 0.0),
          //       child: Row(
          //         mainAxisSize: MainAxisSize.max,
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Expanded(
          //             child: Padding(
          //               padding:
          //                   EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
          //               child: Column(
          //                 mainAxisSize: MainAxisSize.min,
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Padding(
          //                     padding: EdgeInsetsDirectional.fromSTEB(
          //                         0.0, 0.0, 0.0, 8.0),
          //                     child: Text(
          //                       'Support Centerrr',
          //                       textAlign: TextAlign.start,
          //                       style: FlutterFlowTheme.of(context)
          //                           .title1
          //                           .override(
          //                             fontFamily: FlutterFlowTheme.of(context)
          //                                 .title1Family,
          //                             color: FlutterFlowTheme.of(context)
          //                                 .aliasGrayscaleLabel,
          //                             useGoogleFonts: GoogleFonts.asMap()
          //                                 .containsKey(
          //                                     FlutterFlowTheme.of(context)
          //                                         .title1Family),
          //                             lineHeight: 1.6,
          //                           ),
          //                     ),
          //                   ),
          //                   Text(
          //                     'Have any question? \nPlease click to send an email and let us help you.',
          //                     textAlign: TextAlign.start,
          //                     style: FlutterFlowTheme.of(context)
          //                         .bodyText2
          //                         .override(
          //                           fontFamily: FlutterFlowTheme.of(context)
          //                               .bodyText2Family,
          //                           color:
          //                               FlutterFlowTheme.of(context).neutrals4,
          //                           fontWeight: FontWeight.normal,
          //                           useGoogleFonts: GoogleFonts.asMap()
          //                               .containsKey(
          //                                   FlutterFlowTheme.of(context)
          //                                       .bodyText2Family),
          //                           lineHeight: 1.6,
          //                         ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //           Image.asset(
          //             'assets/images/support-center.png',
          //             width: 140.0,
          //             height: 140.0,
          //             fit: BoxFit.cover,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
