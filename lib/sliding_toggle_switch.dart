import 'package:flutter/material.dart';
import 'package:sliding_toggle_switch/sliding_toggle_switch.dart';

class SlidingToggleSwitchPage extends StatelessWidget {
  const SlidingToggleSwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          children: [
            SlidingToggleSwitch(
              onChange: (value) {
                print(value);
              },
            ),
            const SizedBox(height: 50),
            SlidingToggleSwitch(
              width: 100,
              height: 30,
              disabled: true,
              initialValue: true,
              thumbDisabledColor: Colors.grey,
              thumbOnColor: Colors.green.shade600,
              trackDisabledColor: Colors.grey.shade600,
              trackOffColor: Colors.transparent,
              trackOnColor: Colors.transparent,
              thumbOffColor: Colors.grey.shade300,
              borderColor: Colors.black38,
              borderWidth: 3,
              onChange: (value) {
                print(value);
              },
            ),
            const SizedBox(height: 50),
            SlidingToggleSwitch(
              onChange: (value) {
                print('Value: $value');
              },
              borderColor: Colors.indigoAccent,
              height: 50,
              width: 200,
              borderWidth: 2.0,
              thumbDisabledColor: Colors.yellow,
              trackOffColor: Colors.red,
              thumbScale: 100,
              trackOnColor: Colors.yellow,
            ),
          ],
        ),
      )),
    );
  }
}
