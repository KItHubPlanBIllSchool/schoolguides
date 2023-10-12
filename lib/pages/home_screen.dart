// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/pages/greeting_screen.dart';
import 'package:hackathon/pages/login_screen.dart';

import 'main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    Widget screen = GreetingScreen();

    (user == null) ? screen = GreetingScreen() : screen = Screen();
    return screen;
  }
}
