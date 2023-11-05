import 'package:dailyvita_state_flut/routers.dart';
import 'package:dailyvita_state_flut/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DailyVitaAppColor.greenAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                "Welcome To Daily Vita",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Hello, we are here to make your life healthier and happier",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: MediaQuery.of(context).size.height / 20,
                ),
                child: SvgPicture.asset(
                  'assets/splash/meeting_img.svg',
                  height: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 15),
                child: const Text(
                  "We will ask couple of questions to better understand your vitamin",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.push(ScreenPaths.screenOne);
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 10,
                  ),
                  height: 44,
                  decoration: BoxDecoration(
                      color: DailyVitaAppColor.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Center(
                    child: Text(
                      "Get started",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
