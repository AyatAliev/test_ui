import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_ui/ui/main/main_tab_screen.dart';
import 'package:test_ui/ui/notification/notification_screen.dart';
import 'package:test_ui/ui/profile/profile_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Color(0xFFFAFAFA),
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MainTabScreen.routeName,
      title: 'Test UI',
      routes: {
        ProfileScreen.routeName: (BuildContext context) => const ProfileScreen(),
        NotificationScreen.routeName: (BuildContext context) => const NotificationScreen(),
        MainTabScreen.routeName: (BuildContext context) => const MainTabScreen(),
      },
    );
  }
}
