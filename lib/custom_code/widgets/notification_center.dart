// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io' show Platform;
import 'package:client_information/client_information.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';

class NotificationCenter extends StatefulWidget {
  const NotificationCenter(
      {Key? key, this.width, this.height, this.accessToken})
      : super(key: key);

  final double? width;
  final double? height;
  final String? accessToken;

  @override
  _NotificationCenterState createState() => _NotificationCenterState();
}

class _NotificationCenterState extends State<NotificationCenter> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  String? mtoken = "";
  String? idDevice = "";
  bool state = true;
  bool? allowNotification = FFAppState().AllowNotifications;
  String? email = FFAppState().EmailLogin;

  final String dbName = 'quantumania.db'; // db name ////

  void initState() {
    super.initState();
    initMessage();
    initMessagingSettings();
  }

  void initMessage() async {
    WidgetsFlutterBinding.ensureInitialized();
    if (Platform.isAndroid) {
      var firebaseOptions = FirebaseOptions(
        apiKey: 'AIzaSyDpWZcdrTBYa2rVwcYSo7gdGwXNUMLHpqc',
        appId: '1:50029446516:android:c97ffcb346f9ce584ad821',
        projectId: 'news-30800',
        messagingSenderId: '50029446516',
      );
      await Firebase.initializeApp(options: firebaseOptions);
      await FirebaseMessaging.instance.getInitialMessage();
      await FirebaseMessaging.instance.setAutoInitEnabled(true);
      // Android-specific code
    } else if (Platform.isIOS) {
      var firebaseOptions = FirebaseOptions(
          apiKey: 'AIzaSyB7JZIQZMUew3h-unixGNWheDP1yO19nwg',
          appId: '1:50029446516:ios:eeadab28be3d83774ad821',
          projectId: 'news-30800',
          messagingSenderId: '50029446516',
          iosBundleId: "com.quantumania.app");
      await Firebase.initializeApp(options: firebaseOptions);
      await FirebaseMessaging.instance.getInitialMessage();
      await FirebaseMessaging.instance.setAutoInitEnabled(true);
      // iOS-specific code
    }
    // check quyền
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    // get Token
    getToken();
  }

  void getToken() async {
    ClientInformation info = await ClientInformation.fetch();
    idDevice = info.deviceId;
    String accessToken = widget.accessToken!;
    await FirebaseMessaging.instance.getToken().then((token) {
      if (token != null) {
        http.post(
          Uri.parse(
              'https://q-quantummania-cms.dev-tn.com/investment/api/v1/noti'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $accessToken',
          },
          body: jsonEncode(<String, String>{
            'token': '$token',
            'id_device': '$idDevice',
            'email': '$email'
          }),
        );
      }
    });
  }

  void makeListenOpen() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });
  }

  void initMessagingSettings() async {
    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const IOSInitializationSettings iosInitializationSettings =
        IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    final InitializationSettings settings = InitializationSettings(
        android: androidInitializationSettings, iOS: iosInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(settings);

    AndroidNotificationDetails androidPlatformChannelSpecifics =
        const AndroidNotificationDetails(
      'notifications-quantumania',
      'Quantumania Notifications',
      importance: Importance.high,
      priority: Priority.high,
    );
    const IOSNotificationDetails iosNotificationDetails =
        IOSNotificationDetails();

    NotificationDetails platformChannel = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: iosNotificationDetails);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      //
      //

      final Database db = await openDatabase(
        //
        dbName,
        version: 1, //
      ); // init database

      DatabaseHelper dbHelper = DatabaseHelper(db: db); ////

      Dio dio = Dio(); ////

      if (message.notification?.title == 'Topup Successfully') {
        //
        //
        Response response = await dio.get(
            //
            'https://q-quantummania-cms.dev-tn.com/investment/api/v1/wallet',

            ///
            options: Options(//
                headers: {'Authorization': 'Bearer ${widget.accessToken}'})); //

        if (response.statusCode == 200) {
          //
          //
          FFAppState().update(() {
            //
            FFAppState().walletResponse = response.data; //
          });
        } ////
      } ////

      Response noti = await dio.get(
          //
          //
          'https://q-quantummania-cms.dev-tn.com/investment/api/v1/notification', //
          options: Options(
              headers: {'Authorization': 'Bearer ${widget.accessToken}'})); //

      if (noti.statusCode == 200) {
        //
        //
        FFAppState().update(() {
          //
          FFAppState().responseNoti = noti.data; //
        });

        dbHelper.updateData('noti', noti.data); ////
      } //

      if (Platform.isAndroid) {
        //
        //
        await flutterLocalNotificationsPlugin.show(
            //
            0,
            message.notification?.title, //
            message.notification?.body, //
            platformChannel); //
      }

      ///
    }); //

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage? message) async {
      //
      //
      final Database db = await openDatabase(
        //
        //
        dbName, //
        version: 1, //
      ); // init database

      DatabaseHelper dbHelper = DatabaseHelper(db: db); ////
      List<Map<String, dynamic>> responseNotification = ////
          await FindData(dbHelper, 'noti'); ////

      FFAppState().update(() => {
            ////
            FFAppState().currentPageIndex = 'notiPage', ////
            FFAppState().responseNoti = ////
                json.decode(responseNotification[0]['data']) ////
          }); ////
    }); ////
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 48,
        height: 48,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.network(
            "https://res.cloudinary.com/dqph1i6aw/image/upload/v1673187906/Q-Project/image/Btn_Noti_tv00kr.png"),
      ),
    );
  }
}

Future<List<Map<String, dynamic>>> FindData(
    //
    DatabaseHelper dbHelper,
    String tableName) async {
  //
  List<Map<String, dynamic>> dataResponse = //
      await dbHelper.findAllData(tableName); //

  return dataResponse; //
}

class DatabaseHelper {
  //
  final Database db; //

  const DatabaseHelper({required this.db}); //

  Future<void> updateData(String tableName, dynamic data) async {
    //
    String newData = json.encode(data); //
    await db.update(
      //
      tableName, //
      {'data': newData}, //
      where: 'id = 1', //
    );
  }

  Future<List<Map<String, dynamic>>> findAllData(String tableName) async {
    //
    // hi
    final List<Map<String, dynamic>> data = await db.query(tableName); //
    return data; //
  } //
}//
