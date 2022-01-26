import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/historypage.dart';
import 'package:project_1/orderpage.dart';
import 'package:project_1/pageone.dart';
import 'package:project_1/pagethree.dart';
import 'package:project_1/pagetwo.dart';
import 'package:project_1/view/bottom_menu.dart';
import 'package:project_1/view/carouselpage.dart';
import 'package:project_1/view/deliverypage.dart';
import 'package:project_1/view/formlogin.dart';
import 'package:project_1/view/formsignup.dart';
import 'package:project_1/view/itempage.dart';
import 'package:project_1/view/myprofilepage.dart';
import 'package:project_1/view/nointernetpage.dart';
import 'package:project_1/view/offerspage.dart';
import 'package:project_1/view/paymentpage.dart';
import 'package:project_1/view/profilepage.dart';
import 'package:project_1/view/widget/food_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Project1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Pageone(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
