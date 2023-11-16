import 'package:flutter/material.dart';
import 'package:switcher_xlive/switcher_xlive.dart';

class SwtichXLivePage extends StatefulWidget {
  const SwtichXLivePage({Key? key}) : super(key: key);

  @override
  SwtichXLivePageState createState() => SwtichXLivePageState();
}

class SwtichXLivePageState extends State<SwtichXLivePage> {
  bool _value = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SwitcherXlive(
                activeColor: Colors.yellow,
                thumbColor: Colors.red,
                unActiveColor: Colors.blue,
                value: _value,
                onChanged: _changeValue,
              ),
              Text('Current value: $_value'),
              const SizedBox(height: 50),
              SwitcherXlive(
                  value: _value,
                  onChanged: (bool v) {
                    print(v.toString());
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void _changeValue(bool value) {
    setState(() {
      _value = value;
    });
  }
}
