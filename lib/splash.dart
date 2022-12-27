import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tranlator_app/tranlate.dart';


class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => translateScreen(),
            )));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Lottie.asset('assets/Translate.json'),
            ),
          ],
        ),
      ),
    );
  }
}
