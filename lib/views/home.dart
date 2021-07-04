import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thenewsapp/helper/data.dart';
import 'package:thenewsapp/models/category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    categories = getCategories();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
          (Timer timer) {
        setState((){});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("The"),
              Text(
                'News',
                style: TextStyle(color: Colors.blue),
              ),
              Text(
                "App",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                  child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CategoryTitle(
                    imageUrl: categories[index].imageUrl,
                    categoryName: categories[index].categoryName,
                    counter: index + 1,
                  );
                },
              ))
            ],
          ),
        ));
  }
}

class CategoryTitle extends StatelessWidget {
  final imageUrl, categoryName, counter;

  CategoryTitle({
    this.imageUrl,
    this.categoryName,
    this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Card(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text("$counter.)"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                imageUrl,
                width: 120,
                height: 60,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "$categoryName",
              style: TextStyle(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
            ),
          ],
        ),
      ),
    );
  }



}
