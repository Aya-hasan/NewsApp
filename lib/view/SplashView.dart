

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/view/home_view.dart';

class SplashView extends StatelessWidget {
  static const String routName='initial';
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeView.routName);
    });
    return Scaffold(
body:Container(child: Image.asset('assets/images/splash.png',
  width: double.infinity,
  height: double.infinity,
  fit: BoxFit.cover,
),


) ,

    );
  }
}
