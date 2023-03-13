import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes/models/settings_model.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({
    super.key,
    required this.context,
  });
  final BuildContext context;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await Future.delayed(Duration(milliseconds: 4000));
    widget.context.read<SettingsModel>().doneLoading = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.jpg')
                  .animate()
                  .fadeIn(duration: Duration(milliseconds: 1000))
                  .scaleXY(
                      begin: 0.4,
                      end: 0.8,
                      duration: Duration(milliseconds: 1500))
                  .shimmer(
                      delay: Duration(milliseconds: 500),
                      duration: Duration(milliseconds: 1000))
                  .then()
              // .fadeOut(duration: Duration(milliseconds: 400)),
              ,
              SizedBox(
                height: 20,
              ),
              Text(
                'ରେଡ଼ି ତଃ ?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple,
                ),
              )
                  .animate().fadeIn(duration: Duration(milliseconds: 2000))
                  .scaleX(delay: Duration(milliseconds: 1000), begin: 0.6)
            ],
          ),
        ),
      ),
    );
  }
}
