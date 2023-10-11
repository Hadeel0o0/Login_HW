import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_project/onboardng_screens.dart';


class MySplachScreen extends StatefulWidget {
  @override
  State<MySplachScreen> createState() => _MySplachScreenState();
}

class _MySplachScreenState extends State<MySplachScreen> {
  splashScreenTimer() {
    Timer(const Duration(seconds: 10), () async
    {
      Navigator.push(context, MaterialPageRoute(builder: (c) => IntroScreen()));
    });
  }

  @override
  void initState()
  {
    super.initState();
    splashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: container(),
    );
  }

  Widget container() =>
      Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.blueGrey,
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            )
        ),
        child: center(),

      );

  Widget center() =>
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.network('https://images.app.goo.gl/oKZdjzdpG7re3mfFA'),
            ),

            const SizedBox(height: 10,),
            const Text(
              " اذكار المسلم",
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 3,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),)

          ],
        ),

      );

}

