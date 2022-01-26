import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/view/paymentpage.dart';

class Myprofilepage extends StatefulWidget {
  const Myprofilepage({Key? key}) : super(key: key);

  @override
  _MyprofilepageState createState() => _MyprofilepageState();
}

class _MyprofilepageState extends State<Myprofilepage> {
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
          child: Stack(
            children: [
              ListView(shrinkWrap: true, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 50),
                  child: Text(
                    "My profile",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Personal details",
                            style: TextStyle(fontSize: 20)),
                        Text("Change",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 17)),
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
                Card(
                  color: Colors.orange[50],
                  child: ListTile(
                    title: Text('Orders'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  margin: EdgeInsets.only(top: 50, left: 50, right: 50),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
                Card(
                  color: Colors.orange[50],
                  child: ListTile(
                    title: Text('Pending reviews'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  margin: EdgeInsets.only(top: 50, left: 50, right: 50),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
                Card(
                  color: Colors.orange[50],
                  child: ListTile(
                    title: Text('Faq'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  margin: EdgeInsets.only(top: 50, left: 50, right: 50),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
                Card(
                  color: Colors.orange[50],
                  child: ListTile(
                    title: Text('Help'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  margin: EdgeInsets.only(top: 50, left: 50, right: 50),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 200),
                      child: ButtonTheme(
                        minWidth: 250,
                        height: 70,
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.orange)),
                            color: Colors.orange,
                            textColor: Colors.white,
                            child:
                                Text("Update", style: TextStyle(fontSize: 15)),
                            onPressed: () {
                              Get.to(Paymentpage());
                            }),
                      )),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
