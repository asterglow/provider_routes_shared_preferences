// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes/models/settings_model.dart';
import 'package:provider_routes/models/user_model.dart';
import '../routes/routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<SettingsModel>().appBarColor,
        automaticallyImplyLeading: false,
        title: Text('Main Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.settingsPage);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              
              Navigator.pop(context);
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<User>(builder: (context, value, child) {
              return Text(
                'Welcome ${value.username}',
                style: TextStyle(fontSize: 24),
              );
            },
            ),
          ],
        ),
      ),
    );
  }
}
