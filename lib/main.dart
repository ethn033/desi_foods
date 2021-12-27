import 'package:desi_foods/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light()
          .copyWith(primaryColor: Colors.amber, accentColor: Colors.black),
      title: "Home Of Desi Foods",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
