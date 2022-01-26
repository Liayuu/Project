import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/view/formlogin.dart';
import 'package:project_1/view/formsignup.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({Key? key}) : super(key: key);

  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  late PageController _pageController;
  int _index = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            width: 20.0,
            height: 300.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.orange),
            child: Stack(
              children: [
                Center(
                    child: Image.asset(
                  "assets/bundar.png",
                  width: 200,
                  height: 250,
                )),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _pageController.animateToPage(0,
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.easeInOut);
                                });
                              },
                              splashColor: Colors.lightBlue,
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.blue, width: 5.0))),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                                child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _pageController.animateToPage(1,
                                                duration:
                                                    Duration(milliseconds: 200),
                                                curve: Curves.easeInOut);
                                          });
                                        },
                                        splashColor: Colors.lightBlue,
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: Colors.blue,
                                                        width: 5.0))),
                                            child: Text("Sign-up",
                                                style: TextStyle(fontSize: 30)),
                                          ),
                                        ))))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: Get.height,
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _index = value;
                });
              },
              children: [Formlogin(), Formsignup()],
            ),
          )
        ],
      ),
    );
  }
}
