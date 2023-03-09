import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OTP Google Group Code

class OTPGoogleGroup {
  static String baseUrl = 'https://test-api.teknix.vn/api/v1/otp-google';
  static Map<String, String> headers = {};
  static CreateCall createCall = CreateCall();
  static VerifyCall verifyCall = VerifyCall();
}

class CreateCall {
  Future<ApiCallResponse> call({
    String? userName = '',
  }) {
    final body = '''
{
  "username": "${userName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create ',
      apiUrl: '${OTPGoogleGroup.baseUrl}/create-2fa',
      callType: ApiCallType.POST,
      headers: {
        ...OTPGoogleGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic secretKey(dynamic response) => getJsonField(
        response,
        r'''$.results.secret_key''',
      );
  dynamic qrimage(dynamic response) => getJsonField(
        response,
        r'''$.results.qr_image''',
      );
}

class VerifyCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Verify',
      apiUrl: '${OTPGoogleGroup.baseUrl}/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        ...OTPGoogleGroup.headers,
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End OTP Google Group Code

/// Start Account Group Code

class AccountGroup {
  static String baseUrl = 'https://beta.huntgem.io/wp-json/my-account';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2MDEsImVtYWlsIjoicGhvbmdidWkyNDEyOTlAZ21haWwuY29tIiwiaWF0IjoxNjc2OTQ2Njc5LCJleHAiOjE3MDg0ODI2Nzl9.-nZqj3dSIl9xPljw1Zd7HMCwOYylV1lXMK6RDlAfUTc',
  };
  static EnableOTPCall enableOTPCall = EnableOTPCall();
  static LoginOTPCall loginOTPCall = LoginOTPCall();
  static ResetAuthenCall resetAuthenCall = ResetAuthenCall();
  static GetMyAccountCall getMyAccountCall = GetMyAccountCall();
  static EditAccountCall editAccountCall = EditAccountCall();
}

class EnableOTPCall {
  Future<ApiCallResponse> call({
    int? otp,
    String? secret = '',
  }) {
    final body = '''
{
  "otp": "${otp}",
  "secret": "${secret}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enable OTP',
      apiUrl: '${AccountGroup.baseUrl}/v1/2fa/enable',
      callType: ApiCallType.POST,
      headers: {
        ...AccountGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginOTPCall {
  Future<ApiCallResponse> call({
    int? otpNumber,
  }) {
    final body = '''
{
  "otp": "${otpNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login OTP',
      apiUrl: '${AccountGroup.baseUrl}/v1/2fa/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        ...AccountGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ResetAuthenCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) {
    final body = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reset Authen',
      apiUrl: '${AccountGroup.baseUrl}/v1/2fa/reset',
      callType: ApiCallType.POST,
      headers: {
        ...AccountGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetMyAccountCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get My Account',
      apiUrl: '${AccountGroup.baseUrl}/v1/account',
      callType: ApiCallType.GET,
      headers: {
        ...AccountGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic displayName(dynamic response) => getJsonField(
        response,
        r'''$.data.display_name''',
      );
  dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.data.first_name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.data.email''',
      );
  dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$.data.gender''',
      );
  dynamic authenticator(dynamic response) => getJsonField(
        response,
        r'''$.data._2fa.enable''',
      );
  dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.data.last_name''',
      );
  dynamic telegram(dynamic response) => getJsonField(
        response,
        r'''$.data.telegram''',
      );
  dynamic affiliateID(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate_id''',
      );
  dynamic userID(dynamic response) => getJsonField(
        response,
        r'''$.data.ID''',
      );
  dynamic roleName(dynamic response) => getJsonField(
        response,
        r'''$.data.roles.display.role_name''',
      );
}

class EditAccountCall {
  Future<ApiCallResponse> call({
    String? displayName = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? dateBirth = '',
    String? telegram = '',
    String? gender = '',
  }) {
    final body = '''
{
  "display_name": "${displayName}",
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "email": "${email}",
  "date_birth": "${dateBirth}",
  "telegram": "${telegram}",
  "gender": "${gender}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit Account',
      apiUrl: '${AccountGroup.baseUrl}/v1/edit-account',
      callType: ApiCallType.PUT,
      headers: {
        ...AccountGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.user.first_name''',
      );
  dynamic displayName(dynamic response) => getJsonField(
        response,
        r'''$.user.display_name''',
      );
  dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.user.last_name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.user.email''',
      );
  dynamic dateBirth(dynamic response) => getJsonField(
        response,
        r'''$.user.date_birth''',
      );
  dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$.user.gender''',
      );
  dynamic telegram(dynamic response) => getJsonField(
        response,
        r'''$.user.telegram''',
      );
}

/// End Account Group Code

/// Start History Group Code

class HistoryGroup {
  static String baseUrl = 'https://beta.huntgem.io/wp-json/v1/history';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY2OTcwNzQxNywibmJmIjoxNjY5NzA3NDE3LCJleHAiOjE2NzAzMTIyMTcsImRhdGEiOnsidXNlciI6eyJpZCI6Mzc3LCJyb2xlcyI6WyJodW50ZXIiLCJsZXZlbC0zIl0sIl8yZmFfbG9naW4iOnRydWV9fX0.AxW5CQuOxFdFNjG_RBm2PY6VOxMyMUhXALVN6mV4tDw',
  };
  static SubAffiliateCall subAffiliateCall = SubAffiliateCall();
}

class SubAffiliateCall {
  Future<ApiCallResponse> call({
    String? affID = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sub Affiliate',
      apiUrl: '${HistoryGroup.baseUrl}/sub-affiliate/${affID}',
      callType: ApiCallType.GET,
      headers: {
        ...HistoryGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic level(dynamic response) => getJsonField(
        response,
        r'''$.listSubAffiliate[:].level''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.listSubAffiliate[:].total''',
        true,
      );
  dynamic listSubAffiliate(dynamic response) => getJsonField(
        response,
        r'''$.listSubAffiliate''',
        true,
      );
}

/// End History Group Code

/// Start Affiliate Group Code

class AffiliateGroup {
  static String baseUrl = 'https://beta.huntgem.io/wp-json/my-account/v1/aff';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY2OTcwNzQxNywibmJmIjoxNjY5NzA3NDE3LCJleHAiOjE2NzAzMTIyMTcsImRhdGEiOnsidXNlciI6eyJpZCI6Mzc3LCJyb2xlcyI6WyJodW50ZXIiLCJsZXZlbC0zIl0sIl8yZmFfbG9naW4iOnRydWV9fX0.AxW5CQuOxFdFNjG_RBm2PY6VOxMyMUhXALVN6mV4tDw',
  };
  static HaveNotPlaceOrderCall haveNotPlaceOrderCall = HaveNotPlaceOrderCall();
  static TotalUnpaidOrdersCall totalUnpaidOrdersCall = TotalUnpaidOrdersCall();
  static TotalPenaltyOrdersCall totalPenaltyOrdersCall =
      TotalPenaltyOrdersCall();
  static GetInventoryGemsCall getInventoryGemsCall = GetInventoryGemsCall();
  static BoughtScoinCall boughtScoinCall = BoughtScoinCall();
  static HaveNotBoughtScoinCall haveNotBoughtScoinCall =
      HaveNotBoughtScoinCall();
  static ShareCampaignCall shareCampaignCall = ShareCampaignCall();
}

class HaveNotPlaceOrderCall {
  Future<ApiCallResponse> call({
    String? level = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Have not place order',
      apiUrl: '${AffiliateGroup.baseUrl}/hnp-orders',
      callType: ApiCallType.GET,
      headers: {
        ...AffiliateGroup.headers,
      },
      params: {
        'level': level,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].title''',
        true,
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].sub_title''',
        true,
      );
  dynamic rankLabel(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.label''',
        true,
      );
  dynamic rankImage(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.image''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.data.total''',
      );
}

class TotalUnpaidOrdersCall {
  Future<ApiCallResponse> call({
    String? level = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Total Unpaid Orders',
      apiUrl: '${AffiliateGroup.baseUrl}/tu-orders',
      callType: ApiCallType.GET,
      headers: {
        ...AffiliateGroup.headers,
      },
      params: {
        'level': level,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].title''',
        true,
      );
  dynamic rankLabel(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.label''',
        true,
      );
  dynamic rankImage(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.image''',
        true,
      );
  dynamic gemsVal(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].gems[:].val''',
        true,
      );
  dynamic gemsImage(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].gems[:].image''',
        true,
      );
  dynamic gemsCount(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].gems[:].doc_count''',
        true,
      );
  dynamic listAFF(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.data.total''',
      );
}

class TotalPenaltyOrdersCall {
  Future<ApiCallResponse> call({
    String? level = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Total Penalty Orders',
      apiUrl: '${AffiliateGroup.baseUrl}/tp-orders',
      callType: ApiCallType.GET,
      headers: {
        ...AffiliateGroup.headers,
      },
      params: {
        'level': level,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic listAFF(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff''',
        true,
      );
  dynamic rankLabel(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.label''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].title''',
        true,
      );
  dynamic rankImage(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.image''',
        true,
      );
  dynamic subtitle(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].sub_title''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.data.total''',
      );
}

class GetInventoryGemsCall {
  Future<ApiCallResponse> call({
    String? level = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get inventory Gems',
      apiUrl: '${AffiliateGroup.baseUrl}/admin-sold-gem',
      callType: ApiCallType.GET,
      headers: {
        ...AffiliateGroup.headers,
      },
      params: {
        'level': level,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic val(dynamic response) => getJsonField(
        response,
        r'''$.data.admin_block[:].val''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.data.admin_block[:].image''',
        true,
      );
  dynamic adminBlock(dynamic response) => getJsonField(
        response,
        r'''$.data.admin_block''',
        true,
      );
  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.data.admin_block[:].count''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.data.total''',
      );
}

class BoughtScoinCall {
  Future<ApiCallResponse> call({
    String? level = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Bought Scoin',
      apiUrl: '${AffiliateGroup.baseUrl}/b-scoin',
      callType: ApiCallType.GET,
      headers: {
        ...AffiliateGroup.headers,
      },
      params: {
        'level': level,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic subTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].sub_title''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].title''',
        true,
      );
  dynamic rankLabel(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.label''',
        true,
      );
  dynamic rankImage(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.image''',
        true,
      );
  dynamic listAff(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.data.total''',
      );
}

class HaveNotBoughtScoinCall {
  Future<ApiCallResponse> call({
    String? level = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Have Not Bought Scoin',
      apiUrl: '${AffiliateGroup.baseUrl}/hnb-scoin',
      callType: ApiCallType.GET,
      headers: {
        ...AffiliateGroup.headers,
      },
      params: {
        'level': level,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].title''',
        true,
      );
  dynamic subTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].sub_title''',
        true,
      );
  dynamic rankLabel(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.label''',
        true,
      );
  dynamic rankImage(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff[:].rank.image''',
        true,
      );
  dynamic listAff(dynamic response) => getJsonField(
        response,
        r'''$.data.list_aff''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.data.total''',
      );
}

class ShareCampaignCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Share Campaign',
      apiUrl: '${AffiliateGroup.baseUrl}/s-campaign',
      callType: ApiCallType.GET,
      headers: {
        ...AffiliateGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic affID(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate.aff_id''',
      );
  dynamic avatar(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate.avt''',
      );
  dynamic rank(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate.rank''',
      );
  dynamic scoinAmount(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate.scoin.amount''',
      );
  dynamic scoinRegisterAmount(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate.scoin.register_amount''',
      );
  dynamic hpointScoinEarningsAmount(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate.hpoint.scoin_earnings_amount''',
      );
  dynamic hpointGemEarningsAmount(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate.hpoint.gem_earnings_amount''',
      );
  dynamic hpointAmount(dynamic response) => getJsonField(
        response,
        r'''$.data.affiliate.hpoint.amount''',
      );
}

/// End Affiliate Group Code

/// Start Login and OTP Group Code

class LoginAndOTPGroup {
  static String baseUrl = 'https://q-quantummania-cms.dev-tn.com/investment';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static VerifyOTPCall verifyOTPCall = VerifyOTPCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) {
    final body = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login ',
      apiUrl: '${LoginAndOTPGroup.baseUrl}/api/auth/login',
      callType: ApiCallType.POST,
      headers: {
        ...LoginAndOTPGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VerifyOTPCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? token = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify OTP',
      apiUrl: '${LoginAndOTPGroup.baseUrl}/api/auth/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        ...LoginAndOTPGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Login and OTP Group Code

/// Start Get Investment Package Group Code

class GetInvestmentPackageGroup {
  static String baseUrl = 'https://q-quantummania-cms.dev-tn.com/';
  static Map<String, String> headers = {};
  static InvestmentPackageCall investmentPackageCall = InvestmentPackageCall();
}

class InvestmentPackageCall {
  Future<ApiCallResponse> call({
    String? recommend = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Investment Package',
      apiUrl: '${GetInvestmentPackageGroup.baseUrl}/investment',
      callType: ApiCallType.GET,
      headers: {
        ...GetInvestmentPackageGroup.headers,
      },
      params: {
        'recommend': recommend,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Get Investment Package Group Code

/// Start My Investment Group Code

class MyInvestmentGroup {
  static String baseUrl =
      'https://q-quantummania-cms.dev-tn.com/investment/api/v1';
  static Map<String, String> headers = {};
  static GetInventoryCall getInventoryCall = GetInventoryCall();
  static GetPackageInvestmentCall getPackageInvestmentCall =
      GetPackageInvestmentCall();
  static WithdraWalletInternalCall withdraWalletInternalCall =
      WithdraWalletInternalCall();
  static AddBalanceWalletCall addBalanceWalletCall = AddBalanceWalletCall();
  static GetActivitiesCall getActivitiesCall = GetActivitiesCall();
  static APIBuyInvestCall aPIBuyInvestCall = APIBuyInvestCall();
  static StatisticCall statisticCall = StatisticCall();
  static APIGetWalletCall aPIGetWalletCall = APIGetWalletCall();
  static APIProfileCall aPIProfileCall = APIProfileCall();
  static APINotificationCall aPINotificationCall = APINotificationCall();
  static APIUpdateProfileCall aPIUpdateProfileCall = APIUpdateProfileCall();
  static WithdrawCashOriginCall withdrawCashOriginCall =
      WithdrawCashOriginCall();
}

class GetInventoryCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetInventory',
      apiUrl: '${MyInvestmentGroup.baseUrl}/inventory',
      callType: ApiCallType.GET,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPackageInvestmentCall {
  Future<ApiCallResponse> call({
    String? recommend = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPackageInvestment',
      apiUrl: '${MyInvestmentGroup.baseUrl}/product',
      callType: ApiCallType.GET,
      headers: {
        ...MyInvestmentGroup.headers,
      },
      params: {
        'recommend': recommend,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WithdraWalletInternalCall {
  Future<ApiCallResponse> call({
    int? id,
    double? amount,
    String? ref = 'Withdraw interest to wallet internal',
    String? accessToken = '',
    String? description = '',
  }) {
    final body = '''
{
  "amount": "${amount}",
  "ref": "${ref}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'withdraWalletInternal',
      apiUrl: '${MyInvestmentGroup.baseUrl}/withdraw-investment/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AddBalanceWalletCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? type = '',
    int? amount,
    String? currency = '',
    String? transactionKey = '',
  }) {
    final body = '''
{
  "type": "${type}",
  "amount": "${amount}",
  "currency": "${currency}",
"transaction_key": "${transactionKey}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addBalanceWallet',
      apiUrl: '${MyInvestmentGroup.baseUrl}/wallet',
      callType: ApiCallType.PUT,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetActivitiesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getActivities',
      apiUrl: '${MyInvestmentGroup.baseUrl}/activity',
      callType: ApiCallType.GET,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIBuyInvestCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    int? idPackage,
    String? name = '',
    String? type = '',
    String? timeRange = '',
    String? price = '',
    String? currency = '',
  }) {
    final body = '''
{
  "package": ${idPackage},
  "name_package_investment": "${name}",
  "type": "${type}",
  "time_range": "${timeRange}",
  "price": "${price}",
  "currency": "${currency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Buy Invest',
      apiUrl: '${MyInvestmentGroup.baseUrl}/order',
      callType: ApiCallType.POST,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class StatisticCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? time = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Statistic',
      apiUrl: '${MyInvestmentGroup.baseUrl}/statistic',
      callType: ApiCallType.GET,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'time': time,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIGetWalletCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'API Get Wallet',
      apiUrl: '${MyInvestmentGroup.baseUrl}/wallet',
      callType: ApiCallType.GET,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIProfileCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'API Profile',
      apiUrl: '${MyInvestmentGroup.baseUrl}/profile',
      callType: ApiCallType.GET,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APINotificationCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'API Notification',
      apiUrl: '${MyInvestmentGroup.baseUrl}/notification',
      callType: ApiCallType.GET,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIUpdateProfileCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? phoneNumber = '',
    String? identifier = '',
    String? accessToken = '',
    String? affId = '',
  }) {
    final body = '''
{
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "phone_number": "${phoneNumber}",
  "identifier": "${identifier}",
  "aff_id": "${affId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Update Profile',
      apiUrl: '${MyInvestmentGroup.baseUrl}/profile',
      callType: ApiCallType.PUT,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WithdrawCashOriginCall {
  Future<ApiCallResponse> call({
    int? id,
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Withdraw cash origin',
      apiUrl: '${MyInvestmentGroup.baseUrl}/withdraw-cash-origin/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...MyInvestmentGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End My Investment Group Code

/// Start AFF Group Code

class AffGroup {
  static String baseUrl =
      'https://q-quantummania-cms.dev-tn.com/aff-extended/api/';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InRla25peCJ9.eyJ1c2VySWQiOjgzMDEsImVtYWlsIjoidmluaHRydW5nbmdvMTkwN0BnbWFpbC5jb20iLCJpYXQiOjE2NzcxMTY0NTUsImV4cCI6MTY3NzIwMjg1NX0.t0qCNqlTeG0-gSdSwY7iZ9ml5YQtNbExCBJFwlLuOiY',
  };
  static GetSubAffCall getSubAffCall = GetSubAffCall();
  static GetStatisticCall getStatisticCall = GetStatisticCall();
  static FaqCall faqCall = FaqCall();
}

class GetSubAffCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? searchTerm = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get SubAff',
      apiUrl: '${AffGroup.baseUrl}sub-affiliate?search=${searchTerm}',
      callType: ApiCallType.GET,
      headers: {
        ...AffGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetStatisticCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Statistic',
      apiUrl: '${AffGroup.baseUrl}statistic',
      callType: ApiCallType.GET,
      headers: {
        ...AffGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic newSubAff(dynamic response) => getJsonField(
        response,
        r'''$.data.new_sub_aff''',
      );
}

class FaqCall {
  Future<ApiCallResponse> call({
    int? page,
    int? limit,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'FAQ',
      apiUrl: '${AffGroup.baseUrl}question?page=${page}&limit=${limit}',
      callType: ApiCallType.GET,
      headers: {
        ...AffGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End AFF Group Code

class AllHistoryCall {
  static Future<ApiCallResponse> call({
    int? limit,
    int? page,
    String? type = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'All History',
      apiUrl: 'https://beta.huntgem.io/wp-json/v1/history/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY3MDMxMjkwMCwibmJmIjoxNjcwMzEyOTAwLCJleHAiOjE2NzA5MTc3MDAsImRhdGEiOnsidXNlciI6eyJpZCI6MTksInJvbGVzIjpbImFkbWluaXN0cmF0b3IiXSwiXzJmYV9sb2dpbiI6dHJ1ZX19fQ.xEdv9OPQVJumwGo3Gxj3ICg1jyXlhCHx5J4OmbK0Ixg',
      },
      params: {
        'limit': limit,
        'page': page,
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  static dynamic ref(dynamic response) => getJsonField(
        response,
        r'''$.data[:].ref''',
        true,
      );
  static dynamic refId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].ref_id''',
        true,
      );
  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].user_id''',
        true,
      );
  static dynamic creds(dynamic response) => getJsonField(
        response,
        r'''$.data[:].creds''',
        true,
      );
  static dynamic ctype(dynamic response) => getJsonField(
        response,
        r'''$.data[:].ctype''',
        true,
      );
  static dynamic time(dynamic response) => getJsonField(
        response,
        r'''$.data[:].time''',
        true,
      );
  static dynamic entry(dynamic response) => getJsonField(
        response,
        r'''$.data[:].entry''',
        true,
      );
  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data[:].data''',
        true,
      );
}

class GetTopupCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Topup',
      apiUrl: 'https://beta.huntgem.io/wp-json/v1/get-topup',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY2OTY4NjA0OSwibmJmIjoxNjY5Njg2MDQ5LCJleHAiOjE2NzAyOTA4NDksImRhdGEiOnsidXNlciI6eyJpZCI6MTksInJvbGVzIjpbImFkbWluaXN0cmF0b3IiXSwiXzJmYV9sb2dpbiI6dHJ1ZX19fQ.fyxhwxO8GjbxLIYYj5INTUtC-yi3nWTmLqoT0rPMxBs',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic displayPrice(dynamic response) => getJsonField(
        response,
        r'''$.list_topup[:].display_price''',
        true,
      );
}

class WalletCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Wallet',
      apiUrl: 'https://beta.huntgem.io/wp-json/v1/wallet',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoidmluaHRydW5nbmdvMTkwN0BnbWFpbC5jb20iLCJpYXQiOjE2NzcwMzA4OTEsImV4cCI6MTY3NzExNzI5MX0.11AgsLsAmFA0aZzD5R9ocMLERQ-abFkABU5BvI_PJfE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic walletID(dynamic response) => getJsonField(
        response,
        r'''$.data.wallet_id''',
      );
  static dynamic scoin(dynamic response) => getJsonField(
        response,
        r'''$.data.scoin''',
      );
  static dynamic hpoint(dynamic response) => getJsonField(
        response,
        r'''$.data.hpoint''',
      );
  static dynamic hcash(dynamic response) => getJsonField(
        response,
        r'''$.data.hcash''',
      );
}

class TopupPaymentMethodCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Topup Payment Method',
      apiUrl: 'https://beta.huntgem.io/wp-json/v1/get-topup-setting',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY2OTY4NjA0OSwibmJmIjoxNjY5Njg2MDQ5LCJleHAiOjE2NzAyOTA4NDksImRhdGEiOnsidXNlciI6eyJpZCI6MTksInJvbGVzIjpbImFkbWluaXN0cmF0b3IiXSwiXzJmYV9sb2dpbiI6dHJ1ZX19fQ.fyxhwxO8GjbxLIYYj5INTUtC-yi3nWTmLqoT0rPMxBs',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data..title''',
        true,
      );
  static dynamic enable(dynamic response) => getJsonField(
        response,
        r'''$.data..enabled''',
        true,
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.data..description''',
        true,
      );
  static dynamic titleFirst(dynamic response) => getJsonField(
        response,
        r'''$.data[0].title''',
      );
}

class OrderTopupCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? total = '',
    String? method = '',
  }) {
    final body = '''
{
  "userId": "${userId}",
  "total": "${total}",
  "method": "${method}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order Topup',
      apiUrl: 'https://beta.huntgem.io/wp-json/v1/create-order',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class OrderHistoryCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Order History',
      apiUrl: 'https://beta.huntgem.io/wp-json/v1/get-order-history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY2OTcxNDM1NCwibmJmIjoxNjY5NzE0MzU0LCJleHAiOjE2NzAzMTkxNTQsImRhdGEiOnsidXNlciI6eyJpZCI6Mzc3LCJyb2xlcyI6WyJodW50ZXIiLCJsZXZlbC0zIl0sIl8yZmFfbG9naW4iOnRydWV9fX0.sHi4i_j73IUf6fV2IBlHOUtvVhXdsKrZRHn4Pb-c-cQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.listOrder[:].image''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.listOrder[:].title''',
        true,
      );
  static dynamic increaseRate(dynamic response) => getJsonField(
        response,
        r'''$.listOrder[:].increaseRate''',
        true,
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.listOrder[:].status''',
        true,
      );
  static dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.listOrder[:].date''',
        true,
      );
  static dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.listOrder[:].total''',
        true,
      );
}

class ExchangeScoinCall {
  static Future<ApiCallResponse> call({
    String? recipientId = '',
    String? createdAt = '',
    String? pointAmount = '',
    String? exchangeAmount = '',
    String? amountType = '',
    String? fee = '',
    String? feeType = '',
    String? requestStatus = '',
    String? refundStatus = '',
    String? acceptStatus = '',
    String? recipientPointLock = '',
    String? requestUrl = '',
  }) {
    final body = '''
{
  "recipient_id": "${recipientId}",
  "created_at": "${createdAt}",
  "point_amount": "${pointAmount}",
  "exchange_amount": "${exchangeAmount}",
  "amount_type": "${amountType}",
  "fee": "${fee}",
  "fee_type": "${feeType}",
  "request_status": "${requestStatus}",
  "refund_status": "${refundStatus}",
  "accept_status": "${acceptStatus}",
  "recipient_point_lock": "${recipientPointLock}",
  "request_url": "${requestUrl}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Exchange Scoin',
      apiUrl: 'https://beta.huntgem.io/wp-json/v1/request-exchange',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY3MDMxMjkwMCwibmJmIjoxNjcwMzEyOTAwLCJleHAiOjE2NzA5MTc3MDAsImRhdGEiOnsidXNlciI6eyJpZCI6MTksInJvbGVzIjpbImFkbWluaXN0cmF0b3IiXSwiXzJmYV9sb2dpbiI6dHJ1ZX19fQ.xEdv9OPQVJumwGo3Gxj3ICg1jyXlhCHx5J4OmbK0Ixg',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetExchangeRequestCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Exchange Request ',
      apiUrl: 'https://beta.huntgem.io/wp-json/v1/request',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY3MDMxMjkwMCwibmJmIjoxNjcwMzEyOTAwLCJleHAiOjE2NzA5MTc3MDAsImRhdGEiOnsidXNlciI6eyJpZCI6MTksInJvbGVzIjpbImFkbWluaXN0cmF0b3IiXSwiXzJmYV9sb2dpbiI6dHJ1ZX19fQ.xEdv9OPQVJumwGo3Gxj3ICg1jyXlhCHx5J4OmbK0Ixg',
      },
      params: {
        'type': "exchange",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic senderID(dynamic response) => getJsonField(
        response,
        r'''$.data[0]._sender_id''',
      );
  static dynamic createAt(dynamic response) => getJsonField(
        response,
        r'''$.data[0]._created_at''',
      );
  static dynamic expiredTime(dynamic response) => getJsonField(
        response,
        r'''$.data[0]._expired_time''',
      );
  static dynamic pointAmount(dynamic response) => getJsonField(
        response,
        r'''$.data[0]._point_amount''',
      );
  static dynamic exchangeAmount(dynamic response) => getJsonField(
        response,
        r'''$.data[0]._exchange_amount''',
      );
  static dynamic requestUrl(dynamic response) => getJsonField(
        response,
        r'''$.data[0]._request_url''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data[0].id''',
      );
}

class AcceptRequestExchangeCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Accept Request Exchange',
      apiUrl:
          'https://beta.huntgem.io/wp-json/v1/request-exchange/accept/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JldGEuaHVudGdlbS5pbyIsImlhdCI6MTY3MDMxMjkwMCwibmJmIjoxNjcwMzEyOTAwLCJleHAiOjE2NzA5MTc3MDAsImRhdGEiOnsidXNlciI6eyJpZCI6MTksInJvbGVzIjpbImFkbWluaXN0cmF0b3IiXSwiXzJmYV9sb2dpbiI6dHJ1ZX19fQ.xEdv9OPQVJumwGo3Gxj3ICg1jyXlhCHx5J4OmbK0Ixg',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APILoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? update = '',
  }) {
    final body = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Login',
      apiUrl:
          'https://q-quantummania-cms.dev-tn.com/investment/api/auth/login?update=${update}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TrackingWalletCall {
  static Future<ApiCallResponse> call({
    int? idUser,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Tracking wallet',
      apiUrl:
          'https://q-krakend.dev-tn.com/v1/crypto/tracking_deposit/start/${idUser}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class StopTrackingCall {
  static Future<ApiCallResponse> call({
    int? uidUser,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Stop Tracking',
      apiUrl:
          'https://q-krakend.dev-tn.com/v1/crypto/tracking_deposit/stop/${uidUser}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
