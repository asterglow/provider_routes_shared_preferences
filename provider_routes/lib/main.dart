// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes/models/settings_model.dart';
import 'package:provider_routes/models/user_model.dart';
import 'package:provider_routes/pages/loading_page.dart';
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
          create: (context) => SettingsModel(),
        )
      ],
      child: Consumer<SettingsModel>(
        builder: (context, value, child) {
          return value.doneLoading
              ? MaterialApp(
                  theme: value.darkTheme ? darkTheme : lightTheme,
                  initialRoute: RouteManager.settingsPage,
                  onGenerateRoute: RouteManager.generateRoute,
                )
              : LoadingScreen(
                  context: context,
                );
        },
      ),
    );
  }
}

