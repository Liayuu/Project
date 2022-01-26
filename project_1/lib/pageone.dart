import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/pagetwo.dart';
import 'package:project_1/view/bottom_menu.dart';

class Pageone extends StatefulWidget {
  const Pageone({Key? key}) : super(key: key);

  @override
  _PageonState createState() => _PageonState();
}

class _PageonState extends State<Pageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg2.jpg"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person_pin,
                          size: 60.0,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 200.0, left: 20),
                          child: Text(
                            "FOOD\nfOR EVERYONE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                bottom: 0,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: ButtonTheme(
                        minWidth: 300,
                        height: 60,
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.white)),
                            color: Colors.white,
                            textColor: Colors.red,
                            child: Text("Get Started",
                                style: TextStyle(fontSize: 15)),
                            onPressed: () {
                              Get.to(Pagetwo());
                            }),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
