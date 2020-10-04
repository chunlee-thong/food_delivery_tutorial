import 'package:food_delivery_tutorial/constant/app_constant.dart';

class FoodModel {
  String name;
  double price;
  String description;
  double rating;
  String image;

  FoodModel({this.description, this.image, this.name, this.price, this.rating});
}

final List<FoodModel> foodList = [
  FoodModel(
    name: "Cream and Corn Soup",
    price: 29.99,
    rating: 4.5,
    image: "https://source.unsplash.com/200x200/?soup",
    description: LOREM_IPSUM,
  ),
  FoodModel(
    name: "Chicken Sharma",
    price: 12.99,
    rating: 4.5,
    image: "https://source.unsplash.com/200x200/?chicken",
    description: LOREM_IPSUM,
  ),
  FoodModel(
    name: "Cream and Corn Soup",
    price: 29.99,
    rating: 4.5,
    image: "https://source.unsplash.com/200x200/?soup",
    description: LOREM_IPSUM,
  ),
  FoodModel(
    name: "Cream and Corn Soup",
    price: 29.99,
    rating: 4.5,
    image: "https://source.unsplash.com/200x200/?soup",
    description: LOREM_IPSUM,
  ),
];
