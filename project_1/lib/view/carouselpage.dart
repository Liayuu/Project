import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_1/view/nointernetpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carouselpage extends StatefulWidget {
  const Carouselpage({Key? key}) : super(key: key);

  @override
  _CarouselpageState createState() => _CarouselpageState();
}

class _CarouselpageState extends State<Carouselpage> {
  late PageController _pageController;
  int _current = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(""),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.orange,
            ),
            onPressed: () {}),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.orange,
          )
        ],
      ),
      body: ListView(children: [
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
                _pageController = PageController(initialPage: index);
              });
            },
            // onScrolled: (value) {
            //   setState(() {
            //     _current = value!.toInt();
            //   });
            // },
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: false,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
        Center(
          child: SmoothPageIndicator(
            controller: _pageController,
            count: 5,
            effect: WormEffect(activeDotColor: Colors.orange),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("", style: TextStyle(fontSize: 30)),
                Text("", style: TextStyle(color: Colors.orange, fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
              ]),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40, left: 50),
            child: Text(
              "Delivery info",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        Expanded(
          child: Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              margin: EdgeInsets.all(8.0),
              child: Text('')),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 80, left: 50),
            child: Text(
              "Return policy",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        Expanded(
          child: Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              margin: EdgeInsets.all(8.0),
              child: Text('')),
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
                  child: Text("Add to cart", style: TextStyle(fontSize: 15)),
                  onPressed: () {},
                ),
              )),
        )
      ]),
    );
  }
}
