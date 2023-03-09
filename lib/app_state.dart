import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _accessToken =
        await secureStorage.getString('ff_accessToken') ?? _accessToken;
    _investmentPackage =
        (await secureStorage.getStringList('ff_investmentPackage'))?.map((x) {
              try {
                return jsonDecode(x);
              } catch (e) {
                print("Can't decode persisted json. Error: $e.");
                return {};
              }
            }).toList() ??
            _investmentPackage;
    _timeFilterStatistic =
        await secureStorage.getString('ff_timeFilterStatistic') ??
            _timeFilterStatistic;
    if (await secureStorage.read(key: 'ff_dataStatistic') != null) {
      try {
        _dataStatistic =
            jsonDecode(await secureStorage.getString('ff_dataStatistic') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _AllowNotifications =
        await secureStorage.getBool('ff_AllowNotifications') ??
            _AllowNotifications;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _filter = [
    'Filter 1',
    'Filter 2',
    'Filter 3',
    'Filter 4',
    'Filter 5',
    'Filter 6'
  ];
  List<String> get filter => _filter;
  set filter(List<String> _value) {
    _filter = _value;
  }

  void addToFilter(String _value) {
    _filter.add(_value);
  }

  void removeFromFilter(String _value) {
    _filter.remove(_value);
  }

  void removeAtIndexFromFilter(int _index) {
    _filter.removeAt(_index);
  }

  bool _statisticsGem = false;
  bool get statisticsGem => _statisticsGem;
  set statisticsGem(bool _value) {
    _statisticsGem = _value;
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String _value) {
    _accessToken = _value;
    secureStorage.setString('ff_accessToken', _value);
  }

  void deleteAccessToken() {
    secureStorage.delete(key: 'ff_accessToken');
  }

  String _userID = '';
  String get userID => _userID;
  set userID(String _value) {
    _userID = _value;
  }

  bool _authen = false;
  bool get authen => _authen;
  set authen(bool _value) {
    _authen = _value;
  }

  String _FShow = '0';
  String get FShow => _FShow;
  set FShow(String _value) {
    _FShow = _value;
  }

  String _affID = '';
  String get affID => _affID;
  set affID(String _value) {
    _affID = _value;
  }

  String _currentAffOverview = 'aff-overview';
  String get currentAffOverview => _currentAffOverview;
  set currentAffOverview(String _value) {
    _currentAffOverview = _value;
  }

  String _currentSubAff = 'sub-affiliate';
  String get currentSubAff => _currentSubAff;
  set currentSubAff(String _value) {
    _currentSubAff = _value;
  }

  String _currentAffCampaign = 'aff-campaign';
  String get currentAffCampaign => _currentAffCampaign;
  set currentAffCampaign(String _value) {
    _currentAffCampaign = _value;
  }

  String _currentHistoryGem = 'history-gem';
  String get currentHistoryGem => _currentHistoryGem;
  set currentHistoryGem(String _value) {
    _currentHistoryGem = _value;
  }

  String _currentHistoryBalance = 'history-balance';
  String get currentHistoryBalance => _currentHistoryBalance;
  set currentHistoryBalance(String _value) {
    _currentHistoryBalance = _value;
  }

  String _currentNotification = 'notification';
  String get currentNotification => _currentNotification;
  set currentNotification(String _value) {
    _currentNotification = _value;
  }

  String _currentHistoryDetail = 'history-detail';
  String get currentHistoryDetail => _currentHistoryDetail;
  set currentHistoryDetail(String _value) {
    _currentHistoryDetail = _value;
  }

  String _currentOverview = 'overview';
  String get currentOverview => _currentOverview;
  set currentOverview(String _value) {
    _currentOverview = _value;
  }

  int _requestID = 0;
  int get requestID => _requestID;
  set requestID(int _value) {
    _requestID = _value;
  }

  String _currentAccount = '';
  String get currentAccount => _currentAccount;
  set currentAccount(String _value) {
    _currentAccount = _value;
  }

  String _currentTopUp = 'top-up';
  String get currentTopUp => _currentTopUp;
  set currentTopUp(String _value) {
    _currentTopUp = _value;
  }

  String _currentDetail = 'detail';
  String get currentDetail => _currentDetail;
  set currentDetail(String _value) {
    _currentDetail = _value;
  }

  String _currentAff = 'aff';
  String get currentAff => _currentAff;
  set currentAff(String _value) {
    _currentAff = _value;
  }

  String _EmailLogin = '';
  String get EmailLogin => _EmailLogin;
  set EmailLogin(String _value) {
    _EmailLogin = _value;
  }

  List<dynamic> _investmentPackage = [];
  List<dynamic> get investmentPackage => _investmentPackage;
  set investmentPackage(List<dynamic> _value) {
    _investmentPackage = _value;
    secureStorage.setStringList(
        'ff_investmentPackage', _value.map((x) => jsonEncode(x)).toList());
  }

  void deleteInvestmentPackage() {
    secureStorage.delete(key: 'ff_investmentPackage');
  }

  void addToInvestmentPackage(dynamic _value) {
    _investmentPackage.add(_value);
    secureStorage.setStringList('ff_investmentPackage',
        _investmentPackage.map((x) => jsonEncode(x)).toList());
  }

  void removeFromInvestmentPackage(dynamic _value) {
    _investmentPackage.remove(_value);
    secureStorage.setStringList('ff_investmentPackage',
        _investmentPackage.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromInvestmentPackage(int _index) {
    _investmentPackage.removeAt(_index);
    secureStorage.setStringList('ff_investmentPackage',
        _investmentPackage.map((x) => jsonEncode(x)).toList());
  }

  dynamic _historyInterest;
  dynamic get historyInterest => _historyInterest;
  set historyInterest(dynamic _value) {
    _historyInterest = _value;
  }

  String _limitWithdraw = '';
  String get limitWithdraw => _limitWithdraw;
  set limitWithdraw(String _value) {
    _limitWithdraw = _value;
  }

  String _messageErrorWithdraw = '';
  String get messageErrorWithdraw => _messageErrorWithdraw;
  set messageErrorWithdraw(String _value) {
    _messageErrorWithdraw = _value;
  }

  String _timeFilterStatistic = '';
  String get timeFilterStatistic => _timeFilterStatistic;
  set timeFilterStatistic(String _value) {
    _timeFilterStatistic = _value;
    secureStorage.setString('ff_timeFilterStatistic', _value);
  }

  void deleteTimeFilterStatistic() {
    secureStorage.delete(key: 'ff_timeFilterStatistic');
  }

  dynamic _dataStatistic;
  dynamic get dataStatistic => _dataStatistic;
  set dataStatistic(dynamic _value) {
    _dataStatistic = _value;
    secureStorage.setString('ff_dataStatistic', jsonEncode(_value));
  }

  void deleteDataStatistic() {
    secureStorage.delete(key: 'ff_dataStatistic');
  }

  String _zeroValue = '0';
  String get zeroValue => _zeroValue;
  set zeroValue(String _value) {
    _zeroValue = _value;
  }

  List<dynamic> _dataDetailStatistic = [];
  List<dynamic> get dataDetailStatistic => _dataDetailStatistic;
  set dataDetailStatistic(List<dynamic> _value) {
    _dataDetailStatistic = _value;
  }

  void addToDataDetailStatistic(dynamic _value) {
    _dataDetailStatistic.add(_value);
  }

  void removeFromDataDetailStatistic(dynamic _value) {
    _dataDetailStatistic.remove(_value);
  }

  void removeAtIndexFromDataDetailStatistic(int _index) {
    _dataDetailStatistic.removeAt(_index);
  }

  dynamic _newBie;
  dynamic get newBie => _newBie;
  set newBie(dynamic _value) {
    _newBie = _value;
  }

  dynamic _Invertment;
  dynamic get Invertment => _Invertment;
  set Invertment(dynamic _value) {
    _Invertment = _value;
  }

  List<dynamic> _list = [];
  List<dynamic> get list => _list;
  set list(List<dynamic> _value) {
    _list = _value;
  }

  void addToList(dynamic _value) {
    _list.add(_value);
  }

  void removeFromList(dynamic _value) {
    _list.remove(_value);
  }

  void removeAtIndexFromList(int _index) {
    _list.removeAt(_index);
  }

  String _rank = '';
  String get rank => _rank;
  set rank(String _value) {
    _rank = _value;
  }

  bool _AllowNotifications = false;
  bool get AllowNotifications => _AllowNotifications;
  set AllowNotifications(bool _value) {
    _AllowNotifications = _value;
    secureStorage.setBool('ff_AllowNotifications', _value);
  }

  void deleteAllowNotifications() {
    secureStorage.delete(key: 'ff_AllowNotifications');
  }

  List<dynamic> _dataChartInvert = [];
  List<dynamic> get dataChartInvert => _dataChartInvert;
  set dataChartInvert(List<dynamic> _value) {
    _dataChartInvert = _value;
  }

  void addToDataChartInvert(dynamic _value) {
    _dataChartInvert.add(_value);
  }

  void removeFromDataChartInvert(dynamic _value) {
    _dataChartInvert.remove(_value);
  }

  void removeAtIndexFromDataChartInvert(int _index) {
    _dataChartInvert.removeAt(_index);
  }

  List<dynamic> _dataChartDouble = [];
  List<dynamic> get dataChartDouble => _dataChartDouble;
  set dataChartDouble(List<dynamic> _value) {
    _dataChartDouble = _value;
  }

  void addToDataChartDouble(dynamic _value) {
    _dataChartDouble.add(_value);
  }

  void removeFromDataChartDouble(dynamic _value) {
    _dataChartDouble.remove(_value);
  }

  void removeAtIndexFromDataChartDouble(int _index) {
    _dataChartDouble.removeAt(_index);
  }

  String _errorOtp = '';
  String get errorOtp => _errorOtp;
  set errorOtp(String _value) {
    _errorOtp = _value;
  }

  bool _LoadingVerifyOTP = false;
  bool get LoadingVerifyOTP => _LoadingVerifyOTP;
  set LoadingVerifyOTP(bool _value) {
    _LoadingVerifyOTP = _value;
  }

  dynamic _dataProfile;
  dynamic get dataProfile => _dataProfile;
  set dataProfile(dynamic _value) {
    _dataProfile = _value;
  }

  dynamic _packageResponse = jsonDecode('{\"data\":[],\"address\":\"\"}');
  dynamic get packageResponse => _packageResponse;
  set packageResponse(dynamic _value) {
    _packageResponse = _value;
  }

  dynamic _walletResponse = jsonDecode('{\"data\":[]}');
  dynamic get walletResponse => _walletResponse;
  set walletResponse(dynamic _value) {
    _walletResponse = _value;
  }

  dynamic _packageResponseNewbie = jsonDecode('{\"data\":[]}');
  dynamic get packageResponseNewbie => _packageResponseNewbie;
  set packageResponseNewbie(dynamic _value) {
    _packageResponseNewbie = _value;
  }

  dynamic _packageResponseRank = jsonDecode('{\"data\":[]}');
  dynamic get packageResponseRank => _packageResponseRank;
  set packageResponseRank(dynamic _value) {
    _packageResponseRank = _value;
  }

  dynamic _statisticResponse = jsonDecode('{\"data\":{}}');
  dynamic get statisticResponse => _statisticResponse;
  set statisticResponse(dynamic _value) {
    _statisticResponse = _value;
  }

  dynamic _responseInterestDaily =
      jsonDecode('{\"data\":[{\"history_interest\":[]}]}');
  dynamic get responseInterestDaily => _responseInterestDaily;
  set responseInterestDaily(dynamic _value) {
    _responseInterestDaily = _value;
  }

  dynamic _responseProfile = jsonDecode('{\"data\":{}}');
  dynamic get responseProfile => _responseProfile;
  set responseProfile(dynamic _value) {
    _responseProfile = _value;
  }

  dynamic _responseNoti = jsonDecode('{\"data\":{\"notification\":[]}}');
  dynamic get responseNoti => _responseNoti;
  set responseNoti(dynamic _value) {
    _responseNoti = _value;
  }

  dynamic _responseActivity = jsonDecode('{\"data\":[]}');
  dynamic get responseActivity => _responseActivity;
  set responseActivity(dynamic _value) {
    _responseActivity = _value;
  }

  int _currentPageOverview = 0;
  int get currentPageOverview => _currentPageOverview;
  set currentPageOverview(int _value) {
    _currentPageOverview = _value;
  }

  String _currentPageMain = 'overviewPage';
  String get currentPageMain => _currentPageMain;
  set currentPageMain(String _value) {
    _currentPageMain = _value;
  }

  String _choichipsActivity = 'All Activity';
  String get choichipsActivity => _choichipsActivity;
  set choichipsActivity(String _value) {
    _choichipsActivity = _value;
  }

  double _zeroValueNum = 0;
  double get zeroValueNum => _zeroValueNum;
  set zeroValueNum(double _value) {
    _zeroValueNum = _value;
  }

  bool _loadingInventory = false;
  bool get loadingInventory => _loadingInventory;
  set loadingInventory(bool _value) {
    _loadingInventory = _value;
  }

  bool _editProfile = false;
  bool get editProfile => _editProfile;
  set editProfile(bool _value) {
    _editProfile = _value;
  }

  bool _cryptoPayment = false;
  bool get cryptoPayment => _cryptoPayment;
  set cryptoPayment(bool _value) {
    _cryptoPayment = _value;
  }

  bool _errorOtpWithdraw = false;
  bool get errorOtpWithdraw => _errorOtpWithdraw;
  set errorOtpWithdraw(bool _value) {
    _errorOtpWithdraw = _value;
  }

  dynamic _responseSubAff = jsonDecode(
      '{\"data\":[{\"level\":\"F0\",\"properties\":[{\"id\":20,\"referral_type\":\"percentage\",\"referral_rate\":5,\"affiliate_notes\":null,\"date_registered\":\"1676572125817\",\"createdAt\":\"2023-02-16T18:28:45.817Z\",\"updatedAt\":\"2023-02-16T18:28:45.817Z\",\"status\":\"active\",\"website_url\":null,\"aff_id\":null,\"user\":{\"id\":7701,\"email\":\"huy64645@gmail.com\",\"first_name\":\"Huy\",\"last_name\":\"Le\",\"phone_number\":null,\"createdAt\":\"2023-02-16T18:28:45.793Z\",\"updatedAt\":\"2023-02-17T04:19:06.588Z\",\"kyc\":\"no\",\"identifier\":null},\"parent_affiliate\":null}]}],\"msg\":\"Get sub affiliates successfully\",\"total_affiliate\":1}');
  dynamic get responseSubAff => _responseSubAff;
  set responseSubAff(dynamic _value) {
    _responseSubAff = _value;
  }

  dynamic _dataSearchAff = jsonDecode(
      '{\"data\":[{\"userId\":7701,\"name\":\"Huy Le\",\"level\":\"F0\",\"sale\":100}],\"msg\":\"Get filter sub affiliates successfully\"}');
  dynamic get dataSearchAff => _dataSearchAff;
  set dataSearchAff(dynamic _value) {
    _dataSearchAff = _value;
  }

  dynamic _newsubafff;
  dynamic get newsubafff => _newsubafff;
  set newsubafff(dynamic _value) {
    _newsubafff = _value;
  }

  dynamic _totalSale;
  dynamic get totalSale => _totalSale;
  set totalSale(dynamic _value) {
    _totalSale = _value;
  }

  dynamic _totalCommission;
  dynamic get totalCommission => _totalCommission;
  set totalCommission(dynamic _value) {
    _totalCommission = _value;
  }

  dynamic _affName;
  dynamic get affName => _affName;
  set affName(dynamic _value) {
    _affName = _value;
  }

  dynamic _totalFn;
  dynamic get totalFn => _totalFn;
  set totalFn(dynamic _value) {
    _totalFn = _value;
  }

  String _pageActivity = 'noti';
  String get pageActivity => _pageActivity;
  set pageActivity(String _value) {
    _pageActivity = _value;
  }

  dynamic _faq = jsonDecode('{\"data\":[]}');
  dynamic get faq => _faq;
  set faq(dynamic _value) {
    _faq = _value;
  }

  dynamic _balanceProfile;
  dynamic get balanceProfile => _balanceProfile;
  set balanceProfile(dynamic _value) {
    _balanceProfile = _value;
  }

  bool _loadingChart = true;
  bool get loadingChart => _loadingChart;
  set loadingChart(bool _value) {
    _loadingChart = _value;
  }

  bool _loadingWallet = true;
  bool get loadingWallet => _loadingWallet;
  set loadingWallet(bool _value) {
    _loadingWallet = _value;
  }

  bool _loadingPackage = true;
  bool get loadingPackage => _loadingPackage;
  set loadingPackage(bool _value) {
    _loadingPackage = _value;
  }

  bool _loadingPackageNomal = true;
  bool get loadingPackageNomal => _loadingPackageNomal;
  set loadingPackageNomal(bool _value) {
    _loadingPackageNomal = _value;
  }

  String _currentPageIndex = 'overviewPage';
  String get currentPageIndex => _currentPageIndex;
  set currentPageIndex(String _value) {
    _currentPageIndex = _value;
  }

  String _currentPackage = 'cheap';
  String get currentPackage => _currentPackage;
  set currentPackage(String _value) {
    _currentPackage = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
