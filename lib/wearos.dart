import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wear/wear.dart';

class WearHome extends StatelessWidget {
  const WearHome({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (BuildContext context, WearShape shape, Widget? child) {
        return AmbientMode(builder: (context, mode, child) {
          return const Scaffold(
              body: Center(
            child: Text("hello"),
          ));
        });
      },
    );
  }
}
