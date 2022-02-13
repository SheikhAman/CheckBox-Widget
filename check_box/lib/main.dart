import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckBoxWidget(),
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  var _checkBoxVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Checkbox(
                  activeColor: Colors.black,
                  onChanged: (var value) {
                    setState(() => _checkBoxVal = value!);
                  },
                  value: _checkBoxVal,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Checkbox : $_checkBoxVal",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                tristate: true,
                onChanged: null,
                value: null,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Checkbox : false",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
