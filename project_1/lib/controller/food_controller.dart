import 'package:get/get.dart';
import 'package:project_1/model/foodModel/food_model.dart';

class FoodController extends GetxController {
  var food = <FoodModel>[];
  // var drink = <FoodModel>[];

  void fetchDummyData() {
    food.clear();
    food.add(FoodModel(
        foodName: "Nasi Goreng",
        id: 0,
        image:
            'https://pbs.twimg.com/media/FJ6nHNKaUAQrMu4?format=jpg&name=large',
        categoryId: 1,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 80000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Tamagoyaki",
        id: 1,
        image:
            'https://pbs.twimg.com/media/FJm3sKdaQAICHpe?format=jpg&name=medium',
        categoryId: 2,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 90000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Nugget Ayam",
        id: 2,
        image:
            'https://pbs.twimg.com/media/FJjVFyuaMAEHuz9?format=jpg&name=large',
        categoryId: 3,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 10000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Ramen Goreng",
        id: 3,
        image:
            'https://pbs.twimg.com/media/FJgbspWaAAI5W1A?format=jpg&name=900x900',
        categoryId: 4,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 50000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: " Cah Ayam Sawi",
        id: 4,
        image:
            'https://pbs.twimg.com/media/FJn1tfhUUAEwFFx?format=jpg&name=medium',
        categoryId: 5,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 70000.0,
        returnPolicy: "Gak ada pengembalian"));
    update();
  }

  void Yuppidrink() {
    food.clear();
    food.add(FoodModel(
        foodName: "Es Teh",
        id: 0,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAhEeJDzHs-FpDb_rPi39-Ot_4-7QEXAZnFw&usqp=CAU',
        categoryId: 1,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 7000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Boba",
        id: 1,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu3v9kB3x7Zq76Irrp1KeRvQu0OzeBLWOG9A&usqp=CAU',
        categoryId: 2,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 10000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Es Buah",
        id: 2,
        image: 'https://www.kibrispdr.org/dwn/4/contoh-minuman-mocktail.jpg',
        categoryId: 3,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 5000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Lemon Tea",
        id: 3,
        image:
            'https://media.beritagar.id/2018-12/7b0184c1ae45ff51b4db8af70ee5a644b3ba34a8.jpg',
        categoryId: 4,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 8000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Dalgona Coffee",
        id: 4,
        image:
            'https://asset.kompas.com/crops/-1sQt1XHWFpc-aek2jqaFctwdE0=/0x0:1000x667/750x500/data/photo/2020/04/20/5e9db1aab8066.jpg',
        categoryId: 5,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 15000.0,
        returnPolicy: "Gak ada pengembalian"));
    update();
  }

  void Sweetpumpkin() {
    food.clear();
    food.add(FoodModel(
        foodName: "Maccaron",
        id: 0,
        image:
            'https://live.staticflickr.com/65535/50414753792_a03740bf31_b.jpg',
        categoryId: 1,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 20000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Mochi",
        id: 1,
        image: 'https://miro.medium.com/max/699/0*BWwBRIIoa6Wf4NNo.jpg',
        categoryId: 2,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 10000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Raindrop Cake",
        id: 2,
        image:
            'https://media-cdn.tripadvisor.com/media/photo-s/0f/0a/2f/91/raindrop-cake-an-agar.jpg',
        categoryId: 3,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 5000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Dalgona Candy",
        id: 3,
        image:
            'https://i0.wp.com/www.thathumblepost.com/wp-content/uploads/2020/04/dalgonacandy-1.jpg?w=900&ssl=1',
        categoryId: 4,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 8000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Lollipop Candy",
        id: 4,
        image: 'https://cf.shopee.com.my/file/5d7f9236b9ac46b48f14983b39e273cb',
        categoryId: 5,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 15000.0,
        returnPolicy: "Gak ada pengembalian"));
    update();
  }

  void Icecold() {
    food.clear();
    food.add(FoodModel(
        foodName: "Mochi Ice",
        id: 0,
        image: 'https://pbs.twimg.com/profile_images/1530003861/MOCHI.JPG',
        categoryId: 1,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 3000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: " Taiyaki Ice Cream",
        id: 1,
        image:
            'https://pbs.twimg.com/media/Ed8qZfaXgAY56NG?format=jpg&name=large',
        categoryId: 2,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 6000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Matcha Ice Cream",
        id: 2,
        image:
            'https://media.istockphoto.com/photos/lime-ice-cream-on-table-picture-id995543426?k=20&m=995543426&s=170667a&w=0&h=9vp9Fhnf8nA5oQn3lmSjcgwYS5IcXL1Sa40Y0tRNcQE=',
        categoryId: 3,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 5000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Mocha Ice Cream",
        id: 3,
        image:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg/1200px-Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg',
        categoryId: 4,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 5000.0,
        returnPolicy: "Gak ada pengembalian"));
    food.add(FoodModel(
        foodName: "Parfait Ice Cream",
        id: 4,
        image:
            'http://d20aeo683mqd6t.cloudfront.net/articles/title_images/000/038/380/medium/s_main.jpg?2018',
        categoryId: 5,
        delivInfo: "Kalo dikirim jauh saya capek",
        price: 15000.0,
        returnPolicy: "Gak ada pengembalian"));
    update();
  }

  @override
  void onInit() {
    fetchDummyData();
    super.onInit();
  }
}
