import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myvote/state/vote.dart';
import 'screens/launch_screen.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => VoteState(),)
      ],
        child: MaterialApp(
        title: 'MY VOTE',
        debugShowCheckedModeBanner: false,
        home: LaunchScreen(),
        navigatorKey: Get.key,
      ),
    );
  }
}
