import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/view/bottom_menu.dart';
import 'package:project_1/controller/food_controller.dart';
import 'package:project_1/orderpage.dart';
import 'package:project_1/view/itempage.dart';
import 'package:project_1/view/widget/food_card.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({Key? key}) : super(key: key);

  @override
  _PagethreeState createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree>
    with SingleTickerProviderStateMixin {
  final _fromKey = GlobalKey<FormState>();
  late TabController _tabController;
  int tab = 0;
  final FoodController _foodController = Get.put(FoodController());

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      // TODO: implement initState
      _tabController = TabController(length: 4, vsync: this);

      super.initState();
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(""),
          leading: IconButton(
              icon: Icon(
                Icons.list_sharp,
                color: Colors.orange,
              ),
              onPressed: () {}),
          actions: [
            GestureDetector(
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.orange,
              ),
              onTap: () {
                Get.to(Orderpage());
              },
            )
          ],
        ),
        body: SafeArea(
          child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 24),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Delicious\nfood for you",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orange),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: GestureDetector(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Get.to(Itempage());
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TabBar(
                    labelStyle: TextStyle(color: Colors.orange),
                    labelColor: Colors.orange,
                    indicatorColor: Colors.orange,
                    onTap: (value) {
                      setState(() {
                        tab = value;
                      });
                    },
                    tabs: [
                      Tab(
                        text: "Food",
                      ),
                      Tab(
                        text: "Drink",
                      ),
                      Tab(
                        text: "Snack",
                      ),
                      Tab(
                        text: "Ice Cream",
                      )
                    ],
                    controller: _tabController,
                  ),
                ),
                Container(
                    width: Get.width,
                    height: 200,
                    child: GetBuilder<FoodController>(
                        init: Get.put(FoodController()),
                        builder: (controller) {
                          log(tab.toString());
                          if (tab == 0) {
                            controller.fetchDummyData();
                          } else if (tab == 1) {
                            controller.Yuppidrink();
                          } else if (tab == 2) {
                            controller.Sweetpumpkin();
                          } else if (tab == 3) {
                            controller.Icecold();
                          }

                          return ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>
                                FoodCard(model: controller.food[index]),
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.food.length,
                          );
                        })),
              ]),
        ));
  }
}
