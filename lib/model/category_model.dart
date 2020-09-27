class Category {
  String name;
  String image;
  int totalItems;

  Category({this.image, this.name, this.totalItems});
}

final List<Category> categories = [
  Category(
    name: "Food",
    image: "https://source.unsplash.com/200x200/?food",
    totalItems: 129,
  ),
  Category(
    name: "Dessert",
    image: "https://source.unsplash.com/200x200/?dessert",
    totalItems: 45,
  ),
  Category(
    name: "Snacks",
    image: "https://source.unsplash.com/200x200/?snack",
    totalItems: 12,
  ),
  Category(
    name: "Meat",
    image: "https://source.unsplash.com/200x200/?meat",
    totalItems: 445,
  ),
  Category(
    name: "Street food",
    image: "https://source.unsplash.com/200x200/?food",
    totalItems: 23,
  ),
];
