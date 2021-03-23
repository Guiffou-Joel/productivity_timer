import 'package:flutter/material.dart';
import 'package:productivity_timer/widgets.dart';

void main() => runApp(MyApp());

final double defaultPadding = 5.0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Work Timer",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }
}

void emptyMethod() {}

class TimerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My work timer'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(defaultPadding)),
              Expanded(
                child: ProductivityButton(
                  color: Color(0xff009688),
                  text: "Work",
                  onPressed: emptyMethod,
                ),
              ),
              Padding(padding: EdgeInsets.all(defaultPadding)),
              Expanded(
                child: ProductivityButton(
                  color: Color(0xff607D8B),
                  text: "Short Break",
                  onPressed: emptyMethod,
                ),
              ),
              Padding(padding: EdgeInsets.all(defaultPadding)),
              Expanded(
                child: ProductivityButton(
                  color: Color(0xff455A6A),
                  text: "Long Break",
                  onPressed: emptyMethod,
                ),
              ),
              Padding(padding: EdgeInsets.all(defaultPadding)),
            ],
          ),
          Expanded(child: Text("Hello")),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(defaultPadding)),
              Expanded(
                child: ProductivityButton(
                  color: Color(0xff212121),
                  text: "Stop",
                  onPressed: emptyMethod,
                ),
              ),
              Padding(padding: EdgeInsets.all(defaultPadding)),
              Expanded(
                child: ProductivityButton(
                  color: Color(0xff009688),
                  text: "Restart",
                  onPressed: emptyMethod,
                ),
              ),
              Padding(padding: EdgeInsets.all(defaultPadding)),
            ],
          ),
        ],
      ),
    );
  }
}
