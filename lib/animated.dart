import 'dart:math';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';

class AnimatedTestPage extends StatefulWidget {
  const AnimatedTestPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AnimatedTestPageState createState() => _AnimatedTestPageState();
}

class _AnimatedTestPageState extends State<AnimatedTestPage> {
  bool positive = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    const green = Color(0xFF45CC0D);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: DefaultTextStyle(
        style: theme.textTheme.titleLarge!,
        textAlign: TextAlign.center,
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('isActive? '),
              AnimatedToggleSwitch<bool>.dual(
                current: positive,
                first: false,
                second: true,
                spacing: 50.0,
                style: const ToggleStyle(
                  borderColor: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                borderWidth: 5.0,
                height: 55,
                onChanged: (b) => setState(() => positive = b),
                styleBuilder: (b) => ToggleStyle(
                  indicatorColor: b ? Colors.red : Colors.green,
                ),
                iconBuilder: (value) => value
                    ? const Icon(Icons.coronavirus_rounded)
                    : const Icon(Icons.tag_faces_rounded),
                textBuilder: (value) => value
                    ? const Center(child: Text('NO'))
                    : const Center(child: Text('Yes')),
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
