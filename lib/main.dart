import 'package:desi_foods/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.amber,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      ),
      title: "Desi Food",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
