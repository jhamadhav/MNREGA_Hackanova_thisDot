import 'package:final_nav_bar/Main%20Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:final_nav_bar/Main%20Pages/Background.dart';
import 'package:android_intent/android_intent.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  openLocationSetting();
}

void openLocationSetting() async {
  final AndroidIntent intent = new AndroidIntent(
    action: 'android.settings.LOCATION_SOURCE_SETTINGS',
  );
  await intent.launch();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
