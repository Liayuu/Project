import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favoritepage extends StatefulWidget {
  const Favoritepage({Key? key}) : super(key: key);

  @override
  _FavoritepageState createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text('Favorite'),
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Icon(
                Icons.favorite_border,
                size: 200,
                color: Colors.grey,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('No Favorite yet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                    ))),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('His the button down\nbelow to create an order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ))),
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
                        child: Text("Start ordering",
                            style: TextStyle(fontSize: 15)),
                        onPressed: () {}),
                  )),
            ),
          ],
        ));
  }
}
