import 'package:desi_foods/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.amber,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      ),
      title: "Home Of Desi Foods",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
