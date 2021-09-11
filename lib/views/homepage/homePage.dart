// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:food_delivery/global_widget/searchBar.dart';
import 'package:food_delivery/views/homepage/component/LabelName.dart';
import 'package:food_delivery/views/homepage/component/MostPopulatSection.dart';
import 'package:food_delivery/views/homepage/component/cardSection.dart';
import 'package:food_delivery/views/homepage/component/catagrySection.dart';

class HomePage extends StatefulWidget {
  // static const String PATH = "MenuScreen";
  static const String PATH = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? valueChoose;
  List locationItem = ["Chittagong", "Dhaka"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFEF7F6F2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Good Morning Akila!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart,
                              size: 30,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivering to...",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        Container(
                          child: DropdownButton(
                            hint: Text("Select Location         "),
                            icon: Icon(
                              Icons.arrow_drop_down_circle,
                              color: Colors.red,
                            ),
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            value: valueChoose,
                            onChanged: (newValue) {
                              setState(() {
                                valueChoose = newValue as String?;
                              });
                            },
                            items: locationItem.map((valueItem) {
                              return DropdownMenuItem(
                                  value: valueItem, child: Text(valueItem));
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomSearchBar(),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CatagorySection(
                          image: Image.asset("assets/image/indian.jpg"),
                          title: "Maxican"),
                      CatagorySection(
                          image: Image.asset("assets/image/ita.jpg"),
                          title: "Indian"),
                      CatagorySection(
                          image: Image.asset("assets/image/max.jpg"),
                          title: "Italian"),
                    ],
                  ),
                ),
                LabelName(
                  name: "Popular Restaurants",
                  text: "View All",
                ),
                SizedBox(
                  height: 10,
                ),
                CardSection(
                  image: Image.asset("assets/image/pizza.jpg"),
                  title: "Cafe di Noir",
                ),
                CardSection(
                  image: Image.asset("assets/image/img1.jpg"),
                  title: "Cafe di Noir",
                ),
                CardSection(
                  image: Image.asset("assets/image/img2.jpg"),
                  title: "Bakes by Tella",
                ),
                SizedBox(
                  height: 5,
                ),
                LabelName(
                  name: "Most Popular",
                  text: "View All",
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MostPopularSection(
                        image: Image.asset(
                          "assets/image/img2.jpg",
                          fit: BoxFit.cover,
                        ),
                        title: "Burger By Cafe Area",
                      ),
                      MostPopularSection(
                        image: Image.asset(
                          "assets/image/img1.jpg",
                          fit: BoxFit.cover,
                        ),
                        title: "Italian Food",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                LabelName(name: "Recent Items", text: "View All"),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 120,
                            child: Card(
                              child: Image.asset(
                                "assets/image/img1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "Mulberry Pizza By Josh",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                              Text(
                                "Cafe Western Food",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "4.9 (124 Ratings)",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Card(
                                child: Image.asset(
                                  "assets/image/img2.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Pizza Rush Hour by Josh",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  "Cafe Pizza Hut",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "4.9 (290 Ratings)",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
