import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          params: parameterData.params,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
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
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get params => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Login': ParameterData.none(),
  'Verify-OTP': ParameterData.none(),
  'Notifications': (data) async => ParameterData(
        allParams: {
          'current': getParameter<String>(data, 'current'),
        },
      ),
  'Profile': ParameterData.none(),
  'Security': ParameterData.none(),
  'Withdraw': (data) async => ParameterData(
        allParams: {
          'loadingWallet': getParameter<bool>(data, 'loadingWallet'),
        },
      ),
  'Withdraw-Waiting_Vaild': (data) async => ParameterData(
        allParams: {
          'transactionID': getParameter<String>(data, 'transactionID'),
        },
      ),
  'Withdraw-Failed': (data) async => ParameterData(
        allParams: {
          'transactionID': getParameter<String>(data, 'transactionID'),
        },
      ),
  'Affiliate-Overview': (data) async => ParameterData(
        allParams: {
          'current': getParameter<String>(data, 'current'),
        },
      ),
  'Withdraw_request': (data) async => ParameterData(
        allParams: {
          'address': getParameter<String>(data, 'address'),
          'amount': getParameter<double>(data, 'amount'),
        },
      ),
  'Affiliate-detail': (data) async => ParameterData(
        allParams: {
          'current': getParameter<String>(data, 'current'),
        },
      ),
  'Affiliate-Sub_aff': (data) async => ParameterData(
        allParams: {
          'current': getParameter<String>(data, 'current'),
        },
      ),
  'Affiliate_Sub_Aff_detail': ParameterData.none(),
  'Affiliate_Campaign_detail': ParameterData.none(),
  'Affiliate-Overview_Statistics': (data) async => ParameterData(
        allParams: {
          'current': getParameter<String>(data, 'current'),
        },
      ),
  'TopUp': (data) async => ParameterData(
        allParams: {
          'loadingWallet': getParameter<bool>(data, 'loadingWallet'),
        },
      ),
  'Topup_Manual_Payment': (data) async => ParameterData(
        allParams: {
          'price': getParameter<String>(data, 'price'),
          'id': getParameter<String>(data, 'id'),
          'loadingWallet': getParameter<bool>(data, 'loadingWallet'),
        },
      ),
  'Topup-Waiting_Vaild': (data) async => ParameterData(
        allParams: {
          'transactionID': getParameter<String>(data, 'transactionID'),
        },
      ),
  'Topup-Failed': (data) async => ParameterData(
        allParams: {
          'transactionID': getParameter<String>(data, 'transactionID'),
        },
      ),
  'Topup_Alert_Paypal': ParameterData.none(),
  'All_Activities': (data) async => ParameterData(
        allParams: {
          'current': getParameter<String>(data, 'current'),
        },
      ),
  'Transaction_detail': ParameterData.none(),
  'KycTakePhoto': ParameterData.none(),
  'My_Account': ParameterData.none(),
  'My_investment_payment': (data) async => ParameterData(
        allParams: {
          'name': getParameter<String>(data, 'name'),
          'price': getParameter<int>(data, 'price'),
          'timeRange': getParameter<String>(data, 'timeRange'),
          'interestRate': getParameter<String>(data, 'interestRate'),
          'totalRevenue': getParameter<String>(data, 'totalRevenue'),
          'idPackage': getParameter<int>(data, 'idPackage'),
          'type': getParameter<String>(data, 'type'),
        },
      ),
  'Overview_Investment': (data) async => ParameterData(
        allParams: {
          'current': getParameter<String>(data, 'current'),
        },
      ),
  'Overview_new_bie': ParameterData.none(),
  'My_investment_WithdrawCopy': (data) async => ParameterData(
        allParams: {
          'name': getParameter<String>(data, 'name'),
          'price': getParameter<String>(data, 'price'),
          'accruedInterest': getParameter<String>(data, 'accruedInterest'),
          'maxWithdraw': getParameter<String>(data, 'maxWithdraw'),
          'availableCash': getParameter<String>(data, 'availableCash'),
          'totalWithdraw': getParameter<String>(data, 'totalWithdraw'),
          'availableBonus': getParameter<String>(data, 'availableBonus'),
          'dailyBonusWithdraw':
              getParameter<String>(data, 'dailyBonusWithdraw'),
          'idHistory': getParameter<int>(data, 'idHistory'),
        },
      ),
  'My_investment_Transaction_detail': ParameterData.none(),
  'eKYCBack': ParameterData.none(),
  'Account': ParameterData.none(),
  'NotificationsCopy': (data) async => ParameterData(
        allParams: {
          'current': getParameter<String>(data, 'current'),
        },
      ),
  'MainPage': ParameterData.none(),
  'AFF_Sub_AFF': ParameterData.none(),
  'Withdraw_transaction': ParameterData.none(),
  'Withdraw_OTP': (data) async => ParameterData(
        allParams: {
          'address': getParameter<String>(data, 'address'),
          'amount': getParameter<double>(data, 'amount'),
        },
      ),
  'Topup_transaction': ParameterData.none(),
  'Withdraw-castout': (data) async => ParameterData(
        allParams: {
          'loadingWallet': getParameter<bool>(data, 'loadingWallet'),
        },
      ),
  'Topup-cashin': ParameterData.none(),
  'overviewV2update': ParameterData.none(),
  'EditProfile': ParameterData.none(),
  'invest_detail': (data) async => ParameterData(
        allParams: {
          'name': getParameter<String>(data, 'name'),
          'price': getParameter<int>(data, 'price'),
          'dailyInterestRate': getParameter<String>(data, 'dailyInterestRate'),
          'totalWithdrawal': getParameter<String>(data, 'totalWithdrawal'),
          'timeRange': getParameter<String>(data, 'timeRange'),
          'idPackage': getParameter<int>(data, 'idPackage'),
          'typeInterest': getParameter<String>(data, 'typeInterest'),
        },
      ),
  'My_investment_detail': (data) async => ParameterData(
        allParams: {
          'accuredInterest': getParameter<String>(data, 'accuredInterest'),
          'name': getParameter<String>(data, 'name'),
          'availableCash': getParameter<String>(data, 'availableCash'),
          'startDay': getParameter<String>(data, 'startDay'),
          'todayProfit': getParameter<String>(data, 'todayProfit'),
          'timeRange': getParameter<String>(data, 'timeRange'),
          'daysLeft': getParameter<String>(data, 'daysLeft'),
          'idHistory': getParameter<int>(data, 'idHistory'),
          'dailyInterest': getParameter<String>(data, 'dailyInterest'),
          'price': getParameter<String>(data, 'price'),
        },
      ),
  'Transaction_invest_detail': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
