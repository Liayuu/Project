import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/pagethree.dart';
import 'package:project_1/view/bottom_menu.dart';

class Formsignup extends StatefulWidget {
  const Formsignup({Key? key}) : super(key: key);

  @override
  _FormsignupState createState() => _FormsignupState();
}

class _FormsignupState extends State<Formsignup> {
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(shrinkWrap: true, children: [
      Form(
          key: _fromKey,
          child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "masukan username anda",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "tidak boleh kosong ";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Masukan password anda",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "tidak boleh kosong ";
                          }
                          return null;
                        },
                      ),
                    ),
                    Positioned.fill(
                      bottom: 0,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: const EdgeInsets.only(top: 350),
                            child: ButtonTheme(
                              minWidth: 300,
                              height: 60,
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.orange)),
                                  color: Colors.orange,
                                  textColor: Colors.white,
                                  child: Text("Sign-up",
                                      style: TextStyle(fontSize: 15)),
                                  onPressed: () {
                                    {
                                      Get.to(Bottommenu());
                                    }
                                  }),
                            )),
                      ),
                    )
                  ]))))
    ]));
  }
}
