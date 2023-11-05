import 'dart:async';

import 'package:dailyvita_state_flut/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    timer = Timer(const Duration(seconds: 2), () {
      context.go(ScreenPaths.welcome);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Hero(
          tag: "dailyvita",
          child: SvgPicture.asset(
            "assets/splash/meeting_img.svg",
          ),
        ),
      ),
    );
  }
}
