import 'package:dailyvita_state_flut/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DailyVitaAppColor.greenAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Select the diet you follow.*",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              LabeledCheckbox(
                  label: "None", value: checkedValue, onChanged: (newValue) {}),
              LabeledCheckbox(
                  label: "Vegan",
                  value: checkedValue,
                  onChanged: (newValue) {
                    newValue = true;
                  }),
              LabeledCheckbox(
                  label: "Vegetarian",
                  value: checkedValue,
                  onChanged: (newValue) {}),
              LabeledCheckbox(
                  label: "Pescaterian",
                  value: checkedValue,
                  onChanged: (newValue) {}),
              LabeledCheckbox(
                  label: "Strict Paleo",
                  value: checkedValue,
                  onChanged: (newValue) {}),
              LabeledCheckbox(
                  label: "Ketogenic",
                  value: checkedValue,
                  onChanged: (newValue) {}),
              LabeledCheckbox(
                  label: "Plant Based",
                  value: checkedValue,
                  onChanged: (newValue) {}),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 5),
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
                        context.push(ScreenPaths.screenThree);
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: <Widget>[
          Checkbox(
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue);
            },
          ),
          Text(
            label,
            style: const TextStyle(
                color: DailyVitaAppColor.blueGrey,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
