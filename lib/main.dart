import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:motify/homepage.dart';

void main() {
   AwesomeNotifications().initialize(
    'resource://drawable/launcher', 
    [
    NotificationChannel(
      channelGroupKey: 'basic_channel_group',
      channelKey: 'basic_channel',
      channelName: 'basic Notification',
      channelDescription: 'notification channel for basic',
      defaultColor: const Color(0xFF905aDD),
      importance: NotificationImportance.Max,
      ledColor: Colors.white,
      
      
    )
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}
