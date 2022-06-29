import 'package:flutter/material.dart';
import 'package:wishlist/screens/addAnime.dart';
import 'package:wishlist/screens/home.dart';
import 'package:wishlist/screens/splash.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => Splash(),
        '/home' : (context) => Home(),
        '/add-anime' : (context) => AddAnime()
      }
    )
  );
}

