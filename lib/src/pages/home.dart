import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child: Lottie.asset('assets/lottie/6054-shake.json'),
            ),
            const SizedBox(height: 20,),
            const Text('Smart chat application'),
          ],
        ),
      ),
    );
  }
}
