import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';
import '../../backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  QuantumaniaFirebaseUser? initialUser;
  QuantumaniaFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(QuantumaniaFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? MainPageWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? MainPageWidget() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'Login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'Verify-OTP',
              path: 'verify-otp',
              builder: (context, params) => VerifyOTPWidget(),
            ),
            FFRoute(
              name: 'Notifications',
              path: 'notifications',
              builder: (context, params) => NotificationsWidget(
                current: params.getParam('current', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Profile',
              path: 'my-account/profile',
              builder: (context, params) => ProfileWidget(),
            ),
            FFRoute(
              name: 'Security',
              path: 'security',
              builder: (context, params) => SecurityWidget(),
            ),
            FFRoute(
              name: 'Withdraw',
              path: 'withdraw',
              builder: (context, params) => WithdrawWidget(
                loadingWallet: params.getParam('loadingWallet', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Withdraw-Waiting_Vaild',
              path: 'withdraw/waiting-vaild',
              builder: (context, params) => WithdrawWaitingVaildWidget(
                transactionID:
                    params.getParam('transactionID', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Withdraw-Failed',
              path: 'withdraw/failed',
              builder: (context, params) => WithdrawFailedWidget(
                transactionID:
                    params.getParam('transactionID', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Affiliate-Overview',
              path: 'affiliate/overview',
              builder: (context, params) => AffiliateOverviewWidget(
                current: params.getParam('current', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Withdraw_request',
              path: 'withdraw/request',
              builder: (context, params) => WithdrawRequestWidget(
                address: params.getParam('address', ParamType.String),
                amount: params.getParam('amount', ParamType.double),
              ),
            ),
            FFRoute(
              name: 'Affiliate-detail',
              path: 'affiliate/detail',
              builder: (context, params) => AffiliateDetailWidget(
                current: params.getParam('current', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Affiliate-Sub_aff',
              path: 'affiliate/sub-aff',
              builder: (context, params) => AffiliateSubAffWidget(
                current: params.getParam('current', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Affiliate_Sub_Aff_detail',
              path: 'affiliate/sub-aff/detail',
              builder: (context, params) => AffiliateSubAffDetailWidget(),
            ),
            FFRoute(
              name: 'Affiliate_Campaign_detail',
              path: 'affiliate/campaign/detail',
              builder: (context, params) => AffiliateCampaignDetailWidget(),
            ),
            FFRoute(
              name: 'Affiliate-Overview_Statistics',
              path: 'affiliate/overview-statistics',
              builder: (context, params) => AffiliateOverviewStatisticsWidget(
                current: params.getParam('current', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'TopUp',
              path: 'topup',
              builder: (context, params) => TopUpWidget(
                loadingWallet: params.getParam('loadingWallet', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Topup_Manual_Payment',
              path: 'topup-manual-payment',
              builder: (context, params) => TopupManualPaymentWidget(
                price: params.getParam('price', ParamType.String),
                id: params.getParam('id', ParamType.String),
                loadingWallet: params.getParam('loadingWallet', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Topup-Waiting_Vaild',
              path: 'topup/waiting-vaild',
              builder: (context, params) => TopupWaitingVaildWidget(
                transactionID:
                    params.getParam('transactionID', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Topup-Failed',
              path: 'topup/failed',
              builder: (context, params) => TopupFailedWidget(
                transactionID:
                    params.getParam('transactionID', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Topup_Alert_Paypal',
              path: 'topup-alert-paypal',
              builder: (context, params) => TopupAlertPaypalWidget(),
            ),
            FFRoute(
              name: 'All_Activities',
              path: 'all-activities',
              builder: (context, params) => AllActivitiesWidget(
                current: params.getParam('current', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Transaction_detail',
              path: 'transaction-detail',
              builder: (context, params) => TransactionDetailWidget(),
            ),
            FFRoute(
              name: 'KycTakePhoto',
              path: 'my-kyc',
              builder: (context, params) => KycTakePhotoWidget(),
            ),
            FFRoute(
              name: 'My_Account',
              path: 'myAccount',
              builder: (context, params) => MyAccountWidget(),
            ),
            FFRoute(
              name: 'My_investment_payment',
              path: 'my-investment/payment',
              builder: (context, params) => MyInvestmentPaymentWidget(
                name: params.getParam('name', ParamType.String),
                price: params.getParam('price', ParamType.int),
                timeRange: params.getParam('timeRange', ParamType.String),
                interestRate: params.getParam('interestRate', ParamType.String),
                totalRevenue: params.getParam('totalRevenue', ParamType.String),
                idPackage: params.getParam('idPackage', ParamType.int),
                type: params.getParam('type', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Overview_Investment',
              path: 'overview/investment',
              builder: (context, params) => OverviewInvestmentWidget(
                current: params.getParam('current', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Overview_new_bie',
              path: 'overview/new-bie',
              builder: (context, params) => OverviewNewBieWidget(),
            ),
            FFRoute(
              name: 'My_investment_WithdrawCopy',
              path: 'my-investment/withdraw',
              builder: (context, params) => MyInvestmentWithdrawCopyWidget(
                name: params.getParam('name', ParamType.String),
                price: params.getParam('price', ParamType.String),
                accruedInterest:
                    params.getParam('accruedInterest', ParamType.String),
                maxWithdraw: params.getParam('maxWithdraw', ParamType.String),
                availableCash:
                    params.getParam('availableCash', ParamType.String),
                totalWithdraw:
                    params.getParam('totalWithdraw', ParamType.String),
                availableBonus:
                    params.getParam('availableBonus', ParamType.String),
                dailyBonusWithdraw:
                    params.getParam('dailyBonusWithdraw', ParamType.String),
                idHistory: params.getParam('idHistory', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'My_investment_Transaction_detail',
              path: 'my-investmen/transaction-detail',
              builder: (context, params) =>
                  MyInvestmentTransactionDetailWidget(),
            ),
            FFRoute(
              name: 'eKYCBack',
              path: 'ekyc',
              builder: (context, params) => EKYCBackWidget(),
            ),
            FFRoute(
              name: 'Account',
              path: 'account',
              builder: (context, params) => AccountWidget(),
            ),
            FFRoute(
              name: 'NotificationsCopy',
              path: 'notifications-new',
              builder: (context, params) => NotificationsCopyWidget(
                current: params.getParam('current', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'MainPage',
              path: 'mainPage',
              builder: (context, params) => MainPageWidget(),
            ),
            FFRoute(
              name: 'AFF_Sub_AFF',
              path: 'aFFSubAFF',
              builder: (context, params) => AFFSubAFFWidget(),
            ),
            FFRoute(
              name: 'Withdraw_transaction',
              path: 'transaction-detail1',
              builder: (context, params) => WithdrawTransactionWidget(),
            ),
            FFRoute(
              name: 'Withdraw_OTP',
              path: 'withdraw/request1',
              builder: (context, params) => WithdrawOTPWidget(
                address: params.getParam('address', ParamType.String),
                amount: params.getParam('amount', ParamType.double),
              ),
            ),
            FFRoute(
              name: 'Topup_transaction',
              path: 'transaction-detail2',
              builder: (context, params) => TopupTransactionWidget(),
            ),
            FFRoute(
              name: 'Withdraw-castout',
              path: 'topup1',
              builder: (context, params) => WithdrawCastoutWidget(
                loadingWallet: params.getParam('loadingWallet', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Topup-cashin',
              path: 'topup11',
              builder: (context, params) => TopupCashinWidget(),
            ),
            FFRoute(
              name: 'overviewV2update',
              path: 'overviewV2update',
              builder: (context, params) => OverviewV2updateWidget(),
            ),
            FFRoute(
              name: 'EditProfile',
              path: 'editProfile',
              builder: (context, params) => EditProfileWidget(),
            ),
            FFRoute(
              name: 'invest_detail',
              path: 'my-investmen/transaction-detail2',
              builder: (context, params) => InvestDetailWidget(
                name: params.getParam('name', ParamType.String),
                price: params.getParam('price', ParamType.int),
                dailyInterestRate:
                    params.getParam('dailyInterestRate', ParamType.String),
                totalWithdrawal:
                    params.getParam('totalWithdrawal', ParamType.String),
                timeRange: params.getParam('timeRange', ParamType.String),
                idPackage: params.getParam('idPackage', ParamType.int),
                typeInterest: params.getParam('typeInterest', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'My_investment_detail',
              path: 'my-investmen/transaction-detail1',
              builder: (context, params) => MyInvestmentDetailWidget(
                accuredInterest:
                    params.getParam('accuredInterest', ParamType.String),
                name: params.getParam('name', ParamType.String),
                availableCash:
                    params.getParam('availableCash', ParamType.String),
                startDay: params.getParam('startDay', ParamType.String),
                todayProfit: params.getParam('todayProfit', ParamType.String),
                timeRange: params.getParam('timeRange', ParamType.String),
                daysLeft: params.getParam('daysLeft', ParamType.String),
                idHistory: params.getParam('idHistory', ParamType.int),
                dailyInterest:
                    params.getParam('dailyInterest', ParamType.String),
                price: params.getParam('price', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Transaction_invest_detail',
              path: 'my-investmen/transaction-detail123',
              builder: (context, params) => TransactionInvestDetailWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Blue.png',
                      width: 350.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
