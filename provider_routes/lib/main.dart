// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes/models/settings_model.dart';
import 'package:provider_routes/models/user_model.dart';
import 'package:provider_routes/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('Building MyApp');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => User(),
        ),
        ChangeNotifierProvider(
          create: (context) => SettingsData(),
        )
      ],
      builder: (context, child) {
        return MaterialApp(
          initialRoute: RouteManager.settingsPage,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
