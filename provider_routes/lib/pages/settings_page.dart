// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes/models/settings_model.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building Settings');
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SettingsData>(
              builder: (context, value, child) {
                return Text(
                  'Choose color scheme for AppBar',
                  style: TextStyle(color: value.appBarColor),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SettingsData>().appBarColor = Colors.blue;
              },
              child: Text('Blue'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              onPressed: () {
                context.read<SettingsData>().appBarColor = Colors.purple;
              },
              child: Text('Purple'),
            ),
            // SwitchListTile(value: false, onChanged:(value) {
              
            // },
            // title: Text('Light'),
            // subtitle: Text('Dark'), secondary: Text('Dark'),)
          ],
        ),
      ),
    );
  }
}
