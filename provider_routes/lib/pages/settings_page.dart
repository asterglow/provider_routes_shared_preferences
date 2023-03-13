// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes/models/settings_model.dart';
import 'package:provider_routes/routes/routes.dart';
import 'package:rolling_switch/rolling_switch.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    // print('Building SettingsPage');
    // bool abc = context.watch<SettingsModel>().darkTheme;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Settings'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(RouteManager.mainPage);
              },
              icon: Icon(Icons.exit_to_app),
            )
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                // leading: Text('Leading'),
                title: Text(
                  '        Theme',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Consumer<SettingsModel>(
                    builder: (context, value, child) {
                      return LiteRollingSwitch(
                        value: value.darkTheme,
                        // width: 120,
                        animationDuration: Duration(milliseconds: 200),
                        textOff: 'Light   ',
                        textOn: '    Dark',
                        textOnColor: Colors.white60,
                        textOffColor: Colors.white,
                        colorOff: Colors.orange,
                        colorOn: Colors.black54,
                        iconOff: Icons.sunny,
                        iconOn: Icons.nightlight_round_sharp,
                        textSize: 14,
                        onChanged: (bool thm) {
                          // print('Light $thm');
                          value.toggleTheme();
                        },
                        onTap: () {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                // leading: Text('Leading'),
                title: Text(
                  '        Sound',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LiteRollingSwitch(
                    value: true,
                    animationDuration: Duration(milliseconds: 200),
                    textOn: '    On',
                    textOff: '   Muted',
                    textOnColor: Colors.white,
                    textOffColor: Colors.white,
                    colorOff: Colors.redAccent,
                    colorOn: Colors.green,
                    iconOn: Icons.alarm_off_sharp,
                    iconOff: Icons.done_sharp,
                    textSize: 14,
                    onChanged: (bool snd) {
                      // print('sound $snd');
                    },
                    onTap: () {},
                    onDoubleTap: () {},
                    onSwipe: () {},
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                // leading: Text('Leading'),
                title: Text(
                  '        Colour',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LiteRollingSwitch(
                    value: false,
                    
                    animationDuration: Duration(milliseconds: 200),
                    textOff: 'Blue   ',
                    textOn: '  Purple',
                    textOnColor: Colors.white,
                    textOffColor: Colors.white,
                    colorOff: Colors.blue,
                    colorOn: Colors.purple,
                    iconOff: Icons.sunny,
                    iconOn: Icons.nightlight_round_sharp,
                    textSize: 14,
                    onChanged: (bool clr) {
                      print('colour $clr');
                      if (clr = true) {
                        context.read<SettingsModel>().appBarColor =
                            Colors.purple;
                      } else {
                        context.read<SettingsModel>().appBarColor = Colors.blue;
                      }
                    },
                    onTap: () {},
                    onDoubleTap: () {},
                    onSwipe: () {},
                  ),
                ),
              ),
            ),
          ),
          Consumer<SettingsModel>(
            builder: (context, value, child) {
              return SwitchListTile(
                value: value.darkTheme,
                onChanged: (valueNew) {
                  value.toggleTheme();
                },
              );
            },
          ),
          Consumer<SettingsModel>(
            builder: (context, value, child) {
              return RollingSwitch.icon(
                initialState: value.darkTheme,
                onChanged: (valueNew) {
                  value.toggleTheme();
                },
              );
            },
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Consumer<SettingsData>(
      //         builder: (context, value, child) {
      //           return Text(
      //             'Choose color scheme for AppBar',
      //             style: TextStyle(color: value.appBarColor),
      //           );
      //         },
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           context.read<SettingsData>().appBarColor = Colors.blue;
      //         },
      //         child: Text('Blue'),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.purple,
      //         ),
      //         onPressed: () {
      //           context.read<SettingsData>().appBarColor = Colors.purple;
      //         },
      //         child: Text('Purple'),
      //       ),
      //       // SwitchListTile(value: false, onChanged:(value) {

      //       // },
      //       // title: Text('Light'),
      //       // subtitle: Text('Dark'), secondary: Text('Dark'),
      //       // activeThumbImage: 'assets/images/1.jpeg',)



      //     ],
      //   ),
      // ),
    );
  }
}
