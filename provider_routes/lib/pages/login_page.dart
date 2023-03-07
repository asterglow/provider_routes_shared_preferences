// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_model.dart';
import '../routes/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   usernameController.text = '';
  // }

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  String submittext = '';
  @override
  Widget build(BuildContext context) {
    // print('Building Login');
    return Scaffold(
      appBar: AppBar(
        title: Text('ହବ କି ନାହିଁ '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: usernameController,
  
                onSubmitted: (value) {
                  // context.read<User>().username =
                  //     usernameController.text.trim();
                  // Navigator.of(context).pushNamed(RouteManager.mainPage);

                  setState(() {
                    submittext = 'Enter again or Click to submit';
                  });
                },
                textInputAction: TextInputAction.next,
                // textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please enter your username'),
              ),
            ),
            ElevatedButton(
              onFocusChange: (value) {},
              onPressed: () {
                context.read<User>().username = usernameController.text.trim();
                Navigator.of(context).pushNamed(RouteManager.mainPage);
              },
              child: Text('Submit'),
            ),
            Text(
              submittext,
              style: TextStyle(
                height: 2,
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
