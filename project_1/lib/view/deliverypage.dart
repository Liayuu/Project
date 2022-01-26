import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Deliverypage extends StatefulWidget {
  const Deliverypage({Key? key}) : super(key: key);

  @override
  _DeliverypageState createState() => _DeliverypageState();
}

class _DeliverypageState extends State<Deliverypage> {
  int _value = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text(
            'Checkout',
            style: TextStyle(color: Colors.white),
          ),
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
                  "Delivery",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 50),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Address details", style: TextStyle(fontSize: 20)),
                      Text("Change",
                          style: TextStyle(color: Colors.orange, fontSize: 17)),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                  child: Container(
                      width: 30,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, left: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Text(""),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Divider(
                                  height: 10,
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(""),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Divider(
                                  height: 10,
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                      ))),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: Text(
                      "Delivery method",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                  child: Container(
                      width: 30,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top: 30, left: 10),
                          child: Column(children: [
                            Row(
                              children: [
                                Radio(
                                    value: 0,
                                    groupValue: _value,
                                    activeColor: Colors.white,
                                    onChanged: (value) {
                                      setState(
                                        () => _value = 0,
                                      );
                                    }),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text("Door delivery"),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Divider(
                                height: 10,
                                thickness: 2,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                          value: 1,
                                          groupValue: _value,
                                          activeColor: Colors.white,
                                          onChanged: (value) {
                                            setState(
                                              () => _value = 1,
                                            );
                                          }),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text("Pick up"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ])))),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 50),
                child: Text(
                  "Total",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 40, left: 50),
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
            ]),
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
                        child: Text("Proceed to payment",
                            style: TextStyle(fontSize: 15)),
                        onPressed: () {}),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
