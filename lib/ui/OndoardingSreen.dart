import 'package:flutter/material.dart';
// import 'package:mydiagnostics/provider/UserProvider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late ValueNotifier<double> valueNotifier = ValueNotifier(100.0);

  bool? network;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/onboading.png'),
                width: 200,
                height: 200,
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
