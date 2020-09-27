import 'package:flutter/material.dart';
import 'package:food_delivery_tutorial/model/category_model.dart';
import 'package:food_delivery_tutorial/model/food_model.dart';
import 'package:food_delivery_tutorial/widgets/custom_icon_button.dart';
import 'package:food_delivery_tutorial/widgets/filter_button.dart';
import 'package:food_delivery_tutorial/widgets/food_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          children: [
            buildHeader(),
            SizedBox(height: 20),
            buildSearch(),
            buildFilter(),
            buildFoodList(),
            buildSectionTitle(),
            buildCategoryList(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            CircleAvatar(
              backgroundImage:
                  NetworkImage("https://source.unsplash.com/200x200/?man"),
            ),
          ],
        ),
        SizedBox(height: 16),
        Text("Hello X", style: TextStyle(fontSize: 16)),
        Text(
          "Food delivery",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search food",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.all(8),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
        CustomIconButton(
          margin: EdgeInsets.only(left: 8),
          icon: Icon(Icons.filter_list),
          onPressed: () {},
          backgroundColor: Colors.green,
        ),
      ],
    );
  }

  Widget buildFilter() {
    return Container(
      height: 32,
      margin: EdgeInsets.only(top: 16),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FilterButton(
            title: "Popular",
            isSelected: true,
          ),
          FilterButton(
            title: "New Items",
            isSelected: false,
          ),
          FilterButton(
            title: "Hot deal",
            isSelected: false,
          ),
          FilterButton(
            title: "Combo pack",
            isSelected: false,
          ),
        ],
      ),
    );
  }

  Widget buildFoodList() {
    return Container(
      height: 220,
      margin: EdgeInsets.only(top: 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          FoodModel food = foodList[index];
          return FoodCard(food: food);
        },
      ),
    );
  }

  Widget buildSectionTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Explore Categories",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        FlatButton(
          onPressed: () {},
          textColor: Colors.green,
          child: Text("View all"),
        ),
      ],
    );
  }

  Widget buildCategoryList() {
    return GridView.builder(
      itemCount: categories.length,
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final Category category = categories[index];
        return Card(
          child: Center(child: Text(category.name)),
        );
      },
    );
  }
}
