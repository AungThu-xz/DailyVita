import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers.dart';
import '../../styles/colors.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _screenFourState();
}

class _screenFourState extends State<ScreenFour> {
  String answer = "yes";
  String data = "0 - 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DailyVitaAppColor.greenAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Is your daily exposure to sun is limited?*",
                        style: TextStyle(
                            fontSize: 20,
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    RadioListTile(
                      title: const Text(
                        "Yes",
                        style: TextStyle(
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      value: "yes",
                      groupValue: answer,
                      onChanged: (value) {
                        setState(() {
                          answer = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text(
                        "No",
                        style: TextStyle(
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      value: "no",
                      groupValue: answer,
                      onChanged: (value) {
                        setState(() {
                          answer = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Do you current smoke(tobacco or marijuana)?*",
                        style: TextStyle(
                            fontSize: 20,
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    RadioListTile(
                      title: const Text(
                        "Yes",
                        style: TextStyle(
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      value: "yes",
                      groupValue: answer,
                      onChanged: (value) {
                        setState(() {
                          answer = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text(
                        "No",
                        style: TextStyle(
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      value: "no",
                      groupValue: answer,
                      onChanged: (value) {
                        setState(() {
                          answer = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "On average, how many alcoholic beverages do you have in a week?*",
                        style: TextStyle(
                            fontSize: 20,
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    RadioListTile(
                      title: const Text(
                        "0 - 1",
                        style: TextStyle(
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      value: "0-1",
                      groupValue: data,
                      onChanged: (value) {
                        setState(() {
                          data = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text(
                        "2 - 5",
                        style: TextStyle(
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      value: "2-5",
                      groupValue: data,
                      onChanged: (value) {
                        setState(() {
                          data = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text(
                        "5 +",
                        style: TextStyle(
                            color: DailyVitaAppColor.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      value: "5+",
                      groupValue: data,
                      onChanged: (value) {
                        setState(() {
                          data = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.push(ScreenPaths.welcome);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: DailyVitaAppColor.deepOrangeAccent),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                  margin: const EdgeInsets.all(20.0),
                  child: const Text(
                    "Get my personalized vitamin",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
