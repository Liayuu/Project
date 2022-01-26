import 'package:flutter/material.dart';

class Nointernetpage extends StatefulWidget {
  const Nointernetpage({Key? key}) : super(key: key);

  @override
  _NointernetpageState createState() => _NointernetpageState();
}

class _NointernetpageState extends State<Nointernetpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Icon(
          Icons.wifi_off_outlined,
          size: 200,
          color: Colors.grey,
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('No internet connection',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ))),
      Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Your internet connection is currently\nnot available please check or try again.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
            ),
          )),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 270),
            child: ButtonTheme(
              minWidth: 250,
              height: 70,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.orange)),
                  color: Colors.orange,
                  textColor: Colors.white,
                  child: Text("Try again", style: TextStyle(fontSize: 15)),
                  onPressed: () {}),
            )),
      )
    ]));
  }
}
