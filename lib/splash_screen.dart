import 'dart:async';

import 'package:desi_foods/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _BootStrapState createState() => _BootStrapState();
}

class _BootStrapState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    new Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
        (route) => false,
      );
    });
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                "assets/splash.png",
                fit: BoxFit.contain,
              ),
            ),
            Spacer(),
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Copyright © 2020 Desi Food (Pvt) Ltd. All Rights Reserved.",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
