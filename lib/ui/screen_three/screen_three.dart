import 'package:dailyvita_state_flut/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DailyVitaAppColor.greenAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Text(
                "Write any specific allergies or sensitivity towards specific \nthings.(Optional)",
                style: TextStyle(
                    color: DailyVitaAppColor.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: DailyVitaAppColor.greySoft,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Back",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: DailyVitaAppColor.deepOrangeAccent),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push(ScreenPaths.screenFour);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: DailyVitaAppColor.deepOrangeAccent),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 30),
                        margin: const EdgeInsets.all(20.0),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
