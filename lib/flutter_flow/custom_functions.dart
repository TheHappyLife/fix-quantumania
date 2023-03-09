import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String dateTimeFormat(String date) {
  // convert date time
  final d = int.parse(date);

  // convert date time
  return DateFormat('dd/MM/yyyy - HH:mm')
      .format(DateTime.fromMillisecondsSinceEpoch(d));
}

String timeFormat(String date) {
  // convert date time
  return DateFormat('HH:mm:ss').format(DateTime.parse(date));
}

String dateFormat(String date) {
  // convert date time
  return DateFormat('dd/MM/yyyy').format(DateTime.parse(date));
}

double calculateTotal(dynamic data) {
  // Add your function code here!
  double result = 0;
  result = data["listSubAffiliate[:].level"] + 1;
  return result;
}

String capitalizeFirstLetter(String value) {
  var replaceExp = value.replaceAll(new RegExp(r'[^\w\s]+'), ' ');

  var result = replaceExp[0].toUpperCase();
  for (int i = 1; i < replaceExp.length; i++) {
    if (replaceExp[i - 1] == " ") {
      result = result + replaceExp[i].toUpperCase();
    } else {
      result = result + replaceExp[i];
    }
  }
  return result;
}

String calculateInterestDaily(
  int price,
  String dailyInterest,
) {
  return ((price * double.parse(dailyInterest)) / 100).toString();
}

String bagdeTimePaymentInterest(String time) {
  var result;

  switch (time) {
    case "unlimited":
      result = "Flexible";
      break;
    case "three":
      result = "3M";
      break;
    case "six":
      result = "6M";
      break;
    case "year":
      result = "1Y";
      break;
    case "two_year":
      result = "2Y";
      break;
    case "three_year":
      result = "3Y";
      break;
  }

  return result;
}

String? displayTypeBalance(
  String type,
  String amount,
) {
  var result;

  String balance = amount;

  if (type == "add") {
    result = "+" + balance;
  } else {
    result = "-" + balance;

    return result;
  }
}

String displayRankRecomend(dynamic total) {
  var result;

  if (total == null) {
    return 'newbie';
  }

  if (total > 150000) {
    result = 'master';
  } else if (total > 100000) {
    result = "diamond";
  } else if (total > 50000) {
    result = 'golden';
  } else {
    result = 'newbie';
  }

  return result;
}

String titleActivity(String ref) {
  var result = "Other";

  switch (ref) {
    case "withdraw_interest":
      result = "Withdraw Internal";
      break;
    case "buy_package_investment":
      result = "Buy Package Investment";
      break;
    case "add_balance_wallet_from_daily_interest":
      result = "Balance From Interest Investment";
      break;
    case "add_balance_from_admin":
      result = "Change Balance From Admin";
      break;
    case "subtract_balance_from_admin":
      result = "Change Balance From Admin";
      break;
    case "withdraw_crybtos":
      result = "Withdraw USDT to Metamask wallet";
      break;
    case "top_up":
      result = "Topup USDT from Metamask wallet";
      break;
  }

  return result;
}

String possibleWithdrawCashOrigin(String timeRange) {
  var result;

  switch (timeRange) {
    case "unlimited":
      result = "At any time";
      break;
    case "three":
      result = "After 3 months";
      break;
    case "six":
      result = "After 6 months";
      break;
    case "year":
      result = "After 1 years";
      break;
    case "two_year":
      result = "After 2 years";
      break;
    case "three_year":
      result = "After 3 years";
      break;
  }

  return result;
}

String timeInterestPayment(String timeRange) {
  var result;

  switch (timeRange) {
    case "unlimited":
      result = "Unlimited";
      break;
    case "three":
      result = "3 months";
      break;
    case "six":
      result = "6 months";
      break;
    case "year":
      result = "1 years";
      break;
    case "two_year":
      result = "2 years";
      break;
    case "three_year":
      result = "3 years";
      break;
  }

  return result;
}

List<dynamic> filterActivity(
  List<dynamic> dataActivity,
  String? filter,
  String? choichips,
) {
  List<dynamic> data = [];

  if (choichips == "All Activity") {
    for (var prop in dataActivity) {
      switch (filter) {
        case "All":
          {
            data.add(prop);
            break;
          }
        case "Withdraw":
          {
            if (prop['ref'] == 'add_balance_wallet_from_daily_interest' ||
                prop['ref'] == 'withdraw_crybtos') {
              data.add(prop);
            }
            break;
          }
        case "Topup":
          {
            if (prop['ref'] == 'top_up' ||
                prop['ref'] == 'add_balance_from_admin') {
              data.add(prop);
            }
            break;
          }

        case "Investment":
          {
            if (prop['ref'] == 'buy_package_investment') {
              data.add(prop);
            }
            break;
          }
      }
    }
  } else {
    // for (var prop in dataActivity) {
    //   switch (filter) {
    //     case "All":
    //       {
    //         data.add(prop);
    //         break;
    //       }
    //     case "Direct":
    //       {
    //         if (prop['ref'] == 'aff_direct') {
    //           data.add(prop);
    //         }
    //         break;
    //       }
    //     case "Indirect":
    //       {
    //         if (prop['red'] == 'aff_indirect') {
    //           data.add(prop);
    //         }
    //         break;
    //       }

    //     case "Bonus":
    //       {
    //         if (prop['ref'] == 'bonus') {
    //           data.add(prop);
    //         }
    //         break;
    //       }
    //   }
    // }
  }

  return data;
}

String displayNumberPrefix(String number) {
  return '\$ ' + number;
}

String displayRank(double total) {
  var result;

  if (total > 150000) {
    result = 'Master';
  } else if (total > 100000) {
    result = "Diamond";
  } else if (total > 50000) {
    result = 'Golden';
  } else {
    result = 'Newbie';
  }

  return result;
}

int lengthInvestment(List<dynamic> listData) {
  return listData.length;
}

String totalPricePayment(
  int price,
  String currency,
) {
  var result = "";

  switch (currency) {
    case "QOP":
      {
        result = '${price * 100}';
        break;
      }
    case "QOC":
      {
        result = '${price * 100}';
        break;
      }
    case "USDT":
      {
        result = '$price';
        break;
      }
  }

  return result;
}

List<double> dynamicToDouble(dynamic listChart) {
  List<double> arr = [];

  if (listChart is List<dynamic>) {
    listChart.forEach((item) {
      arr.add(item.toDouble());
    });
    return arr;
  }

  arr.add(listChart.toDouble());

  return arr;
}

List<dynamic> filterNoti(
  List<dynamic> dataNoti,
  String? filter,
) {
  List<dynamic> data = [];

  for (var prop in dataNoti) {
    switch (filter) {
      case "All":
        {
          data.add(prop);
          break;
        }
      case "Active":
        {
          if (prop['readed'] == true) {
            data.add(prop);
          }
          break;
        }
      case "Inactive":
        {
          if (prop['readed'] == false) {
            data.add(prop);
          }
          break;
        }
    }
  }

  return data;
}

double? stringToNumber(String? number) {
  double result;

  result = double.parse(number!);

  return result;
}

String displayName(
  String? firstName,
  String? lastName,
) {
  return '$firstName $lastName';
}

double intToDouble(String? number) {
  return double.parse(number!);
}

int? lengthLevelPeople(List<dynamic> listPeople) {
  int totalPeople;

  totalPeople = listPeople.length;

  return totalPeople;
}

int? getItemTotal(List<int>? itemListCount) {
  int total = 0;
  for (int? add in itemListCount!) {
    total += add!;
  }
  return total;
}

String? replaceComma(String? number) {
  String usdAmount = number!;
  if (usdAmount.endsWith('.0')) {
    usdAmount = usdAmount.substring(0, usdAmount.length - 2);
  }
  List<String> usdParts = usdAmount.split(".");
  String dollars = usdParts[0];
  String cents = usdParts.length > 1 ? usdParts[1] : "";

  String formattedDollars = separateThousands(dollars);
  String formattedCents = separateCents(cents);

  String formattedUSD = "$formattedDollars";
  if (formattedCents.isNotEmpty) {
    formattedUSD += ".$formattedCents";
  }

  // print(formattedUSD);

  return formattedUSD;
}

String separateThousands(String number) {
  String result = "";
  int count = 0;

  for (int i = number.length - 1; i >= 0; i--) {
    if (count == 3) {
      result = "," + result;
      count = 0;
    }
    result = number[i] + result;
    count++;
  }

  return result;
}

String separateCents(String number) {
  if (number.length == 0) return "";

  if (number.length == 1) return number;

  if (number.length > 2) {
    number = number.substring(0, 2);
  }

  if (number == "0") return ""; // Kiểm tra số cents có phải là 0 hay không
  if (number[number.length - 1] == "0") {
    // Kiểm tra số cents có phải là số 0 cuối cùng hay không
    number =
        number.substring(0, number.length - 1); // Loại bỏ số 0 cuối cùng nếu có
  }

  return number;
}

bool? disableLoadmore(
  List<dynamic> dataFaq,
  int? length,
) {
  num lengthOfData = dataFaq.length;

  // create function have agrs is array dynamic, and return length of array, length is number
  if (lengthOfData == length) {
    return true;
  } else {
    return false;
  }
}

String? interestPayment(String? timeRange) {
  String result;

  switch (timeRange) {
    case 'unlimited':
      result = 'Unlimited';
      break;
    case 'three_year':
      result = '36M';
      break;
    default:
      result = '36M';
  }

  return result;
}

String? totalWithdrawal(String? timeRange) {
  String result;

  switch (timeRange) {
    case 'unlimited':
      result = 'Unlimited';
      break;
    case 'three_year':
      result = '36M';
      break;
    default:
      result = '36M';
  }

  return result;
}

int accuredProfit(
  String? withdrawMax,
  int? price,
) {
  int withdraw = int.parse(withdrawMax!);

  return withdraw - price!;
}

String usdtToCoins(int number) {
  return (number * 1000).toString();
}

String? interestFollowTime(
  String? dailyInterest,
  int time,
) {
  double dailyRate = double.parse(dailyInterest!);

  return (dailyRate * time).toString();
}
