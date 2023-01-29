import 'package:flutter/material.dart';
import 'package:news/view/SplashView.dart';
import 'package:news/view/home_view.dart';
import 'package:news/core/style/theme.dart';
void main() {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute:SplashView.routName ,
      routes: {
        SplashView.routName:(_)=>SplashView(),
        HomeView.routName:(_)=> HomeView(),},

    );
  }



}

