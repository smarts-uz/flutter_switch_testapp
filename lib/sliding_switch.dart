import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';

class SlidingSwitchPage extends StatelessWidget {
  const SlidingSwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SlidingSwitch(
            value: false,
            width: 500,
            onChanged: (bool value) {
              print('value: $value');
            },
            height: 200,
            animationDuration: const Duration(milliseconds: 400),
            onTap: () {},
            onDoubleTap: () {},
            onSwipe: () {},
            textOff: "TurnOFF",
            textOn: "TurnON",
            contentSize: 20,
            colorOn: const Color(0xffdc6c73),
            colorOff: const Color(0xff6682c0),
            background: const Color(0xffe4e5eb),
            buttonColor: const Color(0xfff7f5f7),
            inactiveColor: const Color(0xff636f7b),
          ),
        ),
      ),
    );
  }
}
