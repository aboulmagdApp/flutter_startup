import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Text('aboulmagd'),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Text(
                    'Strawberry Pavlova Recipe',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Pavloa is a meringue-based dessert named after Anna Pavlova featues a crips crust and soft, light insert Pavloa is a meringue-based dessert named after Anna Pavlova featues a crips crust and soft, light insert',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(Icons.star),
                            Icon(Icons.star)
                          ],
                        ),
                        Text(
                          "17 Reviews",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.restaurant,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("Feed")),
                                Text("2 - 4")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.category,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("Feed")),
                                Text("2 - 4")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.emoji_food_beverage,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("Feed")),
                                Text("2 - 4")
                              ],
                            )
                          ]),
                    )
                  ]),
                )
              ],
            )));
  }
}
