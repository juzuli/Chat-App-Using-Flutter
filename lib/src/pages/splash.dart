import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to smart talk'),
            const SizedBox(height: 20,),
            SizedBox(
              height: 400,
              child: Lottie.asset('assets/lottie/demo-phone-message.json'),
            ),
            const SizedBox(height: 20,),
            const Text('Smart chat application'),
          ],
        ),
      ),
    );
  }
}
