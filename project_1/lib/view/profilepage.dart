import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  get title => null;
  int _value = -2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text(
            'My profile',
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
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 40, left: 50),
                      child: Text(
                        "Information",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 30.0, right: 30.0),
                    child: Container(
                      width: 30,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://pbs.twimg.com/media/EzQ-2YuVcAEaD18.jpg",
                              width: 100,
                              height: 80,
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("", style: TextStyle(fontSize: 30)),
                                  Text("",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17)),
                                  Text("\n",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 50),
                        child: Text(
                          "Payment Method",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 30.0, right: 30.0),
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
                                child: Icon(
                                  Icons.keyboard_alt_rounded,
                                  color: Colors.red,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text("Card"),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Divider(
                              height: 10,
                              thickness: 2,
                              color: Colors.black,
                            ),
                          ),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(
                                  Icons.home_rounded,
                                  color: Colors.pink,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text("Bank accont"),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Divider(
                              height: 10,
                              thickness: 2,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 2,
                                  groupValue: _value,
                                  activeColor: Colors.white,
                                  onChanged: (value) {
                                    setState(
                                      () => _value = 2,
                                    );
                                  }),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(
                                  Icons.credit_card_rounded,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text("Paypal"),
                              )
                            ],
                          ),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
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
                          child: Text("Update", style: TextStyle(fontSize: 15)),
                          onPressed: () {}),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
