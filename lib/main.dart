import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timer_app/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatelessWidget {
  final double defaultPadding = 5.0;
  const TimerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Timer")),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(defaultPadding)),
                Expanded(
                  child: ProductivityButton(
                    text: "Work",
                    onPressed: () {},
                    color: const Color(0xff009688),
                  ),
                ),
                Padding(padding: EdgeInsets.all(defaultPadding)),
                Expanded(
                  child: ProductivityButton(
                    text: "Short Break",
                    onPressed: () {},
                    color: const Color(0xff009688),
                  ),
                ),
                Padding(padding: EdgeInsets.all(defaultPadding)),
                Expanded(
                  child: ProductivityButton(
                    text: "Long Break",
                    onPressed: () {},
                    color: const Color(0xff009688),
                  ),
                ),
                Padding(padding: EdgeInsets.all(defaultPadding)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
