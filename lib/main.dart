import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  await initialize();

  Widget mainView = const DetailView();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    MaterialApp(
      navigatorKey: Get.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
