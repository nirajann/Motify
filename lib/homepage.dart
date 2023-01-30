import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    _checkNotification();
    super.initState();
  }

  _checkNotification() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowded) {
      if (!isAllowded) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _checkNotification();
    Size size = MediaQuery.of(context).size;
    return Builder(builder: (context) {
      return Scaffold(
          backgroundColor: const Color(0xfff5f7fa),
          body: Column(children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height * .4,
                  width: size.width,
                ),
                Positioned(
                    top: size.height * .3,
                    left: 30,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.0,
                            margin: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                AwesomeNotifications().createNotification(
                                    content: NotificationContent(
                                        id: 1,
                                        channelKey: 'basic_channel',
                                        title: 'Notification titile',
                                        body: 'prasid Gandu Ho'));
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xff374ABE),
                                        Color(0xff64B6FF)
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: 250.0, minHeight: 50.0),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Notify",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]))
              ],
            ),
          ]));
    });
  }
}
