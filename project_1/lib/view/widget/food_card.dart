import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/model/foodModel/food_model.dart';
import 'package:project_1/view/carouselpage.dart';

class FoodCard extends StatelessWidget {
  FoodModel model;
  FoodCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 5.0),
      child: Container(
        width: 100,
        height: 170,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(model.foodName!),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Rp. ${model.price}")
                        ],
                      ),
                    ),
                  )),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Center(
                  child: GestureDetector(
                child: Container(
                  width: 70,
                  height: 70,
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.network(
                        model.image,
                        fit: BoxFit.cover,
                        width: 70,
                        height: 100,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Get.to(Carouselpage());
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
