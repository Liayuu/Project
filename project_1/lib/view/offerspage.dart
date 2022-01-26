import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Offterspage extends StatefulWidget {
  const Offterspage({Key? key}) : super(key: key);

  @override
  _OffterspageState createState() => _OffterspageState();
}

class _OffterspageState extends State<Offterspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          )),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: Get.height,
          width: Get.width,
          child: Stack(children: [
            ListView(shrinkWrap: true, children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 50),
                child: Text(
                  "My offers",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Text('ohh snap! No offers yet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800,
                      ))),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                      'You doesn`t have any offers\nyet please check again',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      ))),
            ]),
          ]),
        ),
      ),
    );
  }
}
