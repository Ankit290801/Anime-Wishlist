// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    navigateToHome();
  }

  navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/splashBG.jpg',
            ),
            opacity: 0.9,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Miru",
                style: TextStyle(
                  color: Color.fromARGB(255, 230, 227, 227),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "~Your favorite anime watchlist",
                style: TextStyle(
                  color: Color.fromARGB(255, 230, 227, 227),
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.3
                ),
              ),
              SizedBox(height: 40,),
              const SpinKitFadingCircle(
                color: Color.fromARGB(255, 216, 204, 209),
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}