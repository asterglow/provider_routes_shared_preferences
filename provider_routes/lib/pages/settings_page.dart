// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                // leading: Text('Leading'),
                title: Text('        Theme', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LiteRollingSwitch(
                    value: false,
                    width: 120,
                    animationDuration: Duration(milliseconds: 300),
                    textOff: 'Light  ',
                    textOn: '    Dark',
                    textOnColor: Colors.white60,
                    textOffColor: Colors.white,
                    colorOff: Colors.orange,
                    colorOn: Colors.black54,
                    iconOff: Icons.sunny,
                    iconOn: Icons.nightlight_round_sharp,
                    textSize: 14,
                    onChanged: (bool pos) {
                      print('Light $pos');
                    },
                    onTap: () {},
                    onDoubleTap: () {},
                    onSwipe: () {},
                  ),
                ),
              ),
            ),
          )
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
      // LiteRollingSwitch(
      //   value: true,
      //   width: 120,
      //   animationDuration: Duration(milliseconds: 300),
      //   textOff: 'Light',
      //   textOn: 'Dark',
      //   textOnColor: Colors.white60 ,
      //   textOffColor: Colors.white70 ,
      //   colorOff: Colors.deepOrangeAccent ,
      //   colorOn: Colors.black54 ,
      //   iconOff: Icons.wb_sunny_sharp,
      //   iconOn: Icons.mode_night,
      //   textSize: 14,
      //   onChanged: (bool pos) {
      //     print('Light $pos');
      //   },
      //   onTap: () {},
      //   onDoubleTap: () {},
      //   onSwipe: () {},
      // ),
      // LiteRollingSwitch(
      //         value: true,
      //         textOff: 'Muted',
      //         textOn: 'On',
      //         // textOnColor: Colors.black,
      //         // textOffColor: Colors.white54,
      //         colorOff: Colors.redAccent,
      //         colorOn: Colors.greenAccent,
      //         iconOff: Icons.alarm_off,
      //         iconOn: Icons.done,
      //         textSize: 18,
      //         onChanged: (bool pos) {
      //           print('Sounds $pos');
      //         },
      //         onTap: () {},
      //         onDoubleTap: () {},
      //         onSwipe: () {},
      //       ),

      //     ],
      //   ),
      // ),
    );
  }
}
