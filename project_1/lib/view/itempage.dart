import 'package:flutter/material.dart';

class Itempage extends StatefulWidget {
  const Itempage({Key? key}) : super(key: key);

  @override
  _ItempageState createState() => _ItempageState();
}

class _ItempageState extends State<Itempage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(56),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              )),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Icon(
              Icons.search_sharp,
              size: 200,
              color: Colors.grey,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Item not found',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ))),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Try searching the item with\na different keyword.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ))
        ]));
  }
}
