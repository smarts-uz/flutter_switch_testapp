import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';

class DayNightSwitchCustom extends StatefulWidget {
  const DayNightSwitchCustom({super.key});

  @override
  State<DayNightSwitchCustom> createState() => _DayNightSwitchCustomState();
}

class _DayNightSwitchCustomState extends State<DayNightSwitchCustom> {
  bool dayNightSwitch = true;

  @override
  Widget build(BuildContext context) {
    return DayNightSwitch(
      value: dayNightSwitch,
      onChanged: (value) {
        setState(() => dayNightSwitch = value);
      },
    );
  }
}
